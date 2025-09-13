# 🧨gd-chaos-suite


A modular Godot prank and automation suite engineered for sandbox VM experimentation, stalth triggers, and rollback-safe chaos. Built by Logan, powerd by precision and mischief.

---


## 🚀 Overview


`gd-chaos-suite` is a Godot-based framework for deploying prank payloads, automating sandbox tests, and orchestrating rollback-safe experiments. Whether you're simulating fake installers, triggering stealth crashes, or stress-testing VM environments, this suite gives you full control—with modular configs, cancel buttons, and snapshot restores.

It's designed for creative technologists, prank engineers, and sandbox tinkerers who want to bled playful chaos with surgical control. Every payload is modular. Every prank is reversible. Every experiment is safe.

---

## 🧠 Core Philosophy

This suite is built on five principles:

1. **Modularity First**

   Every payload, utility, and rollback tool is a standalone `.gd` script. You can mix, match, and orchestrate them via config files—no hardcoded chaos here.

3. **Stealth Activation**  
   Pranks should feel like they “just happened.” Triggers can be based on usernames, system time, VM state, or custom flags. You control the mischief.

4. **Sandbox Safety**  
   VM detection, split disk checks, and snapshot awareness ensure payloads only run in safe environments. No real systems harmed—ever.

5. **Rollback Always**  
   Every prank includes cancel buttons, log cleanup, and optional snapshot restore. You can reverse anything with a single click or config flag.

6. **Config-Driven Chaos**  
   Massive JSON and INI files let you orchestrate payloads with precision. Want to trigger a crash screen only at 3:33 AM in a VM with shared folders? Easy.

---

## 🧩 Key Compnents

### `core/`

- `payload_manager.md`
  Loads and triggers payloads based on `tasks.json`. Supports dynamic loading and rollback orchestration.

- `sandbox_utils.gd`  
  Detects VM environments using split disk checks, snapshot flags, and shared folder presence.

- `prank_controller.gd`  
  Manages timed exits, fake error popups, and stealth logic. Can simulate system failure or loop recursive alerts.

- `config_loader.gd`  
  Parses JSON and INI files, validates structure, and feeds config data into the suite.

---

### `payloads/`

- `fake_installer.gd`  
  Simulates a legitimate installer UI, then ends in a dramatic “catastrophic failure” message.

- `looping_error.gd`  
  Spawns recursive error popups with cancel button logic. Can be tuned for intensity and duration.

- `crash_screen.gd`  
  Displays a parody crash overlay—Minecraft-style, BSOD-style, or custom. Includes fake logs and error codes.

- `stealth_trigger.gd`  
  Activates payloads based on username, time, or VM state. Ideal for surprise pranks or timed chaos.

---

### `rollback/`

- `snapshot_restore.gd`  
  Restores VM snapshot if prank exceeds severity threshold. Can be triggered manually or automatically.

- `cancel_button.gd`  
  UI logic for safe exit. Appears on prank overlays and error popups. Always gives the user a way out.

- `log_cleanup.gd`  
  Purges prank traces from logs, temp files, and config flags. Keeps the sandbox clean.

---

### `config/`

- `tasks.json`  
  Defines which payloads to trigger and in what order. Supports nested logic and conditional activation.

- `prank_profiles.json`  
  Modular prank definitions per user, time, or VM state. Lets you build prank personas and escalation paths.

- `vm_settings.ini`  
  VM-specific sandbox configs. Includes shared folder paths, snapshot flags, and rollback thresholds.

---

## 🛠️ Usage

1. Clone the repo into your Godot project.
2. Custoize `config/tasks.json` to define active payloads.
3. Adjust `prank_profiles.json` for stealth triggers and rollback logic.
4. Run the project in a VM or sandboxed envoronment.
5. Watch the chaos unfold-safely.

---

### 🧪 Example Trigger

```json
{
  "payloads":["fake_installer", "looping_error"],
  "stealth": {
    "username": "Logan",
    "vm_required": true,
    "hour": 3
  },
  "rollback": {
    "cancel_button": true,
    "restore_snapshot": true
  }
}
