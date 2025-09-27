// Animated cursor glow shader for Ghostty
// Creates a pulsing glow effect around the cursor

uniform sampler2D u_texture;
uniform vec2 u_resolution;
uniform float u_time;
uniform vec2 u_cursor_position;

in vec2 v_texcoord;
out vec4 frag_color;

void main() {
    vec4 original = texture(u_texture, v_texcoord);

    // Calculate distance from cursor in screen coordinates
    vec2 pixel_pos = v_texcoord * u_resolution;
    vec2 cursor_pos = u_cursor_position;
    float dist = length(pixel_pos - cursor_pos);

    // Animated glow parameters
    float pulse = sin(u_time * 3.0) * 0.3 + 0.7;
    float glow_radius = 30.0 * pulse;
    float glow_intensity = 0.6 * pulse;

    // Calculate glow effect
    float glow = 0.0;
    if (dist < glow_radius) {
        glow = (1.0 - dist / glow_radius) * glow_intensity;
    }

    // Apply glow with a nice color
    vec3 glow_color = vec3(0.4, 0.8, 1.0); // Cyan-blue glow
    vec3 final_color = original.rgb + glow_color * glow * original.a;

    frag_color = vec4(final_color, original.a);
}