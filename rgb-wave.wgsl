// RGB Wave: one hue wave across the window. Ribbon icons take it, button blocks and panels
// are washed with it. x is in points, as in the all-in-one build.
const SATURATION: f32 = 0.65;
const BUTTON_ALPHA: f32 = 0.18;
const PANEL_ALPHA: f32 = 0.22;

// HSV with value 1 to linear RGB.
fn wave_colour(hue: f32) -> vec3<f32> {
    let k = abs(fract(vec3<f32>(hue) + vec3<f32>(0.0, 2.0 / 3.0, 1.0 / 3.0)) * 6.0 - vec3<f32>(3.0)) - vec3<f32>(1.0);
    let srgb = mix(vec3<f32>(1.0), clamp(k, vec3<f32>(0.0), vec3<f32>(1.0)), SATURATION);
    return pow(srgb, vec3<f32>(2.2));
}

fn tint(r: ScRegion) -> vec4<f32> {
    let wave_length = max(sc.settings.x, 1.0);
    let speed = sc.settings.y;
    let phase = fract(sc.time * speed / wave_length);
    let colour = wave_colour(fract(r.position.x / wave_length - phase));
    if r.kind == SC_ICON {
        return vec4<f32>(colour, r.enabled);
    }
    if r.kind == SC_BUTTON {
        return vec4<f32>(colour, BUTTON_ALPHA * sc.settings.z * step(0.99, r.enabled));
    }
    return vec4<f32>(colour, PANEL_ALPHA * sc.settings.w);
}
