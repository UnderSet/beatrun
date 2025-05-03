# Beatrun (unofficial fork)

Yet another unofficial fork of that one Garry's Mod gamemode. Based off of [this](https://github.com/jonnybro/beatrun) by *[JonnyBro](https://github.com/jonnybro)*.

> [!CAUTION]
> Read this *thoroughly* before asking questions, please.
>
> This isn't a legal project in case you can't tell, so licenses don't really apply.

> [!NOTE]
> Once again, this repository is based off of [this](https://github.com/jonnybro/beatrun), which is maintained by the people who cracked Beatrun originally.

---

## About

A parkour gamemode for *Garry's Mod*, originally made by datae. Now maintained by a small community.

> [!WARNING]
> This repository contains ***optional modules***, they are ***not required for play*** unlike datae's version.
>
> - Modules are [Steam Presence by YuRaNnNzZZ](https://github.com/YuRaNnNzZZ/gmcl_steamrichpresencer) and [Discord Rich Presence by Fluffy Servers](https://github.com/fluffy-servers/gmod-discord-rpc).
> - [Located under **`/lua/bin`** in this repository.](lua/bin).

## Installation

### 🛠️ Manual Installation

1. **[Download this repository](https://github.com/UnderSet/beatrun/archive/refs/heads/master.zip).** *(You can also use the green **Code** button above if you're viewing the whole repository instead of just this file.)*
2. Delete the `beatrun` folder in `garrysmod/addons`, if it exists.
3. Extract `beatrun-main` into `garrysmod/addons`.
4. (Optional) For Discord and Steam Presence, move `garrysmod/addons/beatrun-main/lua` to `garrysmod`.
5. You're done, there isn't a step 5 to installing.

---

## Features and Updates

### New Features

- <u>[**Custom Courses Database** hosted by Jonny_Bro](https://courses.jonnybro.ru) (free and *[open source](https://git.jonnybro.ru/jonny_bro/beatrun-courses-server)*).</u>[^1]
- **New Gamemode:** Deathmatch.
- 3 animation sets: a new, original one by MTB; a fixed version of *Mirror's Edge*'s animations, and an unfixed version of *Mirror's Edge*'s animations *(some want that, okay?!)*.
- *Optional "proper" Kickglitch* similar to the *[original game](https://www.youtube.com/watch?v=zK5y3NBUStc)*.
- In-game configuration menu in the Tools menu under **Beatrun**. All settings can be modified here.
- Localization support, with translations to **6 other languages** already available out-of-the-box.
- Props spawned from the Spawnmenu will save in courses.
- A few useful new abilities:
  - *Roll after ziplines:* Press `+duck` (CTRL by default).
  - *Dismount from ladders:* Press `+duck` on a ladder (CTRL by default).
  - *Remove ziplines created with Zipline Gun:* Press `+attack2` while holding it (RMB by default).
  - *Next checkpoint arrow* for easier navigation.
- New server and client configuration variables, such as:
  - Server:
    - `Beatrun_AllowOverdriveInMultiplayer`: Allows Overdrive in multiplayer.
    - `Beatrun_AllowPropSpawn`: Lets players spawn props and weapons without admin rights.
    - `Beatrun_HealthRegen`: Toggles health regeneration.
  - Client:
    - `Beatrun_HUDTextColor`, `Beatrun_HUDCornerColor`, `Beatrun_HUDFloatingXPColor`: Customize HUD colors.
    - `Beatrun_DisableGrapple`: Toggle the grapple ability.
    - `Beatrun_KickGlitch`: Toggle between the kickglitch modes *(disabled, datae (velocity multiplier), Mirror's Edge (invisible platform))*
    - `Beatrun_QuickturnHandsOnly`: Restrict Quickturn to the Runner Hands weapon.
- Likely more, go check the Git commit history.
- Other improvements:
  - Small camera punch effect when diving.
  - SteamID no longer displayed on screen.

### Other Fixes

- Fixed playermodels showing as `ERROR` in first person.
- Improved leaderboard sorting in gamemodes.
- Fixed crashes and issues with Data Theft gamemode.
- Enabled jumping while walking.
- Grapples now follow moving entities and are visible to other players.

---

## Related Projects

- **[Beatrun Reanimated Project](https://github.com/JonnyBro/beatrun-anims)**

---

## Credits

- **All contributors ([original repository](https://github.com/JonnyBro/beatrun/graphs/contributors), [this repository](https://github.com/UnderSet/beatrun/graphs/contributors))** ❤️
- [EarthyKiller127/datae](https://www.youtube.com/channel/UCiFqPwGo4x0J65xafIaECDQ) - Original creator of Beatrun.
- [relaxtakenotes](https://github.com/relaxtakenotes) - Made the original project - and by extension this project - possible.
- [MTB](https://www.youtube.com/@MTB396) - Beatrun Reanimated Project.
- [Fluffy Servers](https://github.com/fluffy-servers) - Discord Rich Presence.
- [YuRaNnNzZZ](https://github.com/YuRaNnNzZZ) - Steam Presence (TFA Base creator).

[^1] "Unfortunately" this version is *incompatible* with datae's course database due to changes in the online functionality code.
