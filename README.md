# Simple Health Bar

## Description
This Godot plugin provides a **health bar with a damage indicator**. When health decreases, the red progress bar updates immediately, while the white damage bar updates with a **0.2-second delay** (modifiable in the Timer node within the plugin scene). This delay helps visually indicate recent damage taken, making health loss more noticeable.

## Features
- A responsive progress bar that instantly reflects health changes.
- A secondary damage bar that updates after a short delay to highlight recent damage.

## Usage
1. Call `init_bar(health_value)` in the `ready()` function of the script where you want to attach the health bar to.
2. Call `update_bar(new_health_value)` whenever the health value changes.

## License
This plugin is open-source and licensed under the MIT License. See `LICENSE.md` for details.
