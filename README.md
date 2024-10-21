# NEXT Hunger Games Map

Welcome to the **NEXT Hunger Games Map**! This repository contains a custom Minecraft map along with a unique datapack designed to provide an epic Hunger Games experience. In addition, it relies on a resource pack to complete the full experience.

## What's Included

- **Custom Map**: A Hunger Games-inspired map designed for intense PvP action and survival.
- **Custom Datapack**: Enhances the gameplay with special mechanics, commands, and features tailored for the Hunger Games mode.
  
## Dependencies

This project **depends** on the **NEXT Hunger Games Resource Pack**. Without it, the experience won't be complete! The resource pack contains custom textures, sounds, and models required for the map and datapack to work as intended.

### How to Get the Resource Pack

You can download the resource pack from the **NEXT Hunger Games Resource Pack** repository:
- [NEXT Hunger Games Resource Pack - Latest Release](https://github.com/marcusbandit/NEXT-Hungergames-resourcepack/releases/latest)

Make sure to download and install the resource pack before playing the map.

## How to Set Up the Map and Datapack

### 1. Clone the Map Repository

Clone this repository directly into your Minecraft saves folder to get both the map and the datapack:

```bash
git clone https://github.com/marcusbandit/NEXT-Hungergames-map.git
```

This will download the **map** and **datapack** needed for the Hunger Games gameplay.

### 2. Move Files

After cloning the repository:
- Copy the `NEXT-Hungergames-map` folder to your Minecraft `saves` directory (typically found in `.minecraft/saves`).
- The **datapack** is already included in the `datapacks` folder of the map, so no additional setup is required there.

### 3. Install the Resource Pack

Once you've downloaded the resource pack from the release link above, install it by following these steps:
- Copy the downloaded `.zip` file to your `.minecraft/resourcepacks` folder.
- Launch Minecraft, go to **Options** -> **Resource Packs**, and apply the **NEXT Hunger Games Resource Pack**.

### 4. Launch the Game

1. Start Minecraft and select the **NEXT Hunger Games Map** from your world list.
2. Apply the resource pack via the options menu.
3. You're now ready to dive into the Hunger Games experience!

## Setting Up the Map on a Server

If you'd like to host the **NEXT Hunger Games Map** on a multiplayer server, follow these steps:

### 1. Clone the Repository

Clone the repository onto your server:

```bash
git clone https://github.com/marcusbandit/NEXT-Hungergames-map.git
```

### 2. Upload the Map to Your Server

- Copy the `NEXT-Hungergames-map` folder into your server's `world` directory (or whatever directory your server uses for maps). 
- Ensure that the **datapack** inside the map folder is present in the `datapacks` folder of the server.

### 3. Install the Resource Pack

To ensure all players use the custom resource pack, you'll need to set up a resource pack for the server:
- Download the **NEXT Hunger Games Resource Pack** from [here](https://github.com/marcusbandit/NEXT-Hungergames-resourcepack/releases/latest).
- Upload the `.zip` file to a file hosting service (e.g., Dropbox, Google Drive, or your own server).
- Copy the direct download link to the `.zip` file.

### 4. Configure `server.properties`

In your `server.properties` file, add the following line with the direct link to the resource pack:

```txt
resource-pack=<DIRECT_LINK_TO_RESOURCE_PACK>
```

This will prompt players to automatically download and apply the resource pack when they join your server.

### 5. Start the Server

Once everything is set up, start your server and have players join using the map and resource pack. The Hunger Games adventure begins!

## Minecraft Version Compatibility

- **Minecraft Version**: The map and datapack are designed for **Minecraft version 1.x.x**. Please make sure you're running the correct version to avoid any compatibility issues.

## Features

- **Custom Map**: Detailed and thoughtfully designed for an exciting Hunger Games experience, complete with hidden secrets, traps, and more.
- **Unique Datapack**: Adds custom features like timed events, unique loot spawns, and automatic game resets.
- **Custom Textures and Sounds**: Thanks to the resource pack, you'll get fully immersive textures, sounds, and models that bring the Hunger Games theme to life.

## How to Contribute

If you'd like to contribute to this project:
1. Fork this repository.
2. Create your feature branch (`git checkout -b feature/my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/my-new-feature`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have any questions, feel free to open an issue on this repository, and I'll get back to you as soon as possible.

---

**Enjoy the Game!** 🎮
