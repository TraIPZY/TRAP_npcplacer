

# Static NPC Spawner

A simple and lightweight script to place **static NPCs** on your FiveM server map. Perfect for adding life and immersion to your world with minimal setup.

## Features

* Spawn static NPCs anywhere on the map
* Easy configuration and setup
* Positions are saved automatically
* Supports custom models and props
* Lightweight and optimized for performance

## Installation

1. Download or clone this repository:

   ```bash
   git clone https://github.com/yourusername/static-npc-spawner.git
   ```
2. Move the folder to your server’s `resources` directory.
3. Add the resource to your `server.cfg`:

   ```
   ensure static-npc-spawner
   ```
4. Start your server and configure NPCs in the `config.lua`.

## Configuration

* **NPC Model:** Change the ped model.
* **Position:** Set X, Y, Z coordinates and heading.
* **Animations:** Optional static animations.

Example in `config.lua`:

```lua
NPCs = {
    { model = "s_m_m_security_01", x = 215.76, y = -810.12, z = 30.73, heading = 90.0 },
    { model = "a_m_m_business_01", x = 230.15, y = -780.45, z = 30.73, heading = 180.0 },
}
```

## Usage

Once configured, the NPCs will spawn automatically when the server starts. No commands required.

## Contributing

Feel free to submit issues or pull requests! Suggestions for new features or improvements are welcome.

## License

This project is licensed under the MIT License.

