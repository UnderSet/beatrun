# beatrun
Modified version of [*Beatrun*](https://datae.org/beatrun), with source code.

# Installation
1. **Delete or disable VManip (Base) from Steam Workshop!**
2. **Delete `beatrun` and `vmaniprework` folders in `addons` if they exist!**
3. Extract `beatrun` and `vmaniprework` folders to `your_game_folder/garrysmod/addons`.
4. Extract `lua` folder to `your_game_folder/garrysmod`.
    * `lua` folder contains modules for Discord Rich Presense to work. They are open source, visit [this](https://github.com/fluffy-servers/gmod-discord-rpc) to see the source.

## Changes added by [JonnyBro](https://github.com/jonnybro)
* [Custom online courses database](https://courses.beatrun.ru)! It's free 🤯
* Configurations menu - You can find it in the tool menu, in the *Beatrun* Category!\
All of the settings below can be changed in the configuration menu
* Allow Overdrive usage on the server - `Beatrun_AllowOverdriveInMultiplayer`.
* Toggle between old and new (like in ME) Kick-Glitch - `Beatrun_OldKickGlitch`.
* Change HUD's colors - `Beatrun_HUDTextColor`, `Beatrun_HUDCornerColor`, `Beatrun_HUDFloatingXPColor`.
* Allow players to spawn props without admin rights - `Beatrun_AllowPropSpawn`.
* Discord Rich Presence (extract `lua` folder to `garrysmod`, along side with `addons` folder, see step 4 above).
* Small camera punch when diving.
* Ability to remove ziplines that created with *Zipline Gun* - RMB.
* Removed your SteamID from right corner, because I can.

## TODO
- [ ] Gamemodes menu

## Fixes and changes from previous version
* Punching while crouching.
* Tweaked safety roll, now you can roll under things.
* Fixes to Gamemodes menu.
* Removed unused code.

# All changes and fixes
* Course saving works with compression and without.
* ~~Quick turnaround only with `Unarmed`.~~ Not present.
* Fixed leaderboard sorting in gamemodes.
* Fixed grapple usage in courses and gamemodes.
* Fixed DataTheft crash when touching data bank.
* Fixed error when loading course.
* Fixed collisions issues.
* Fixed and tweaked player-player weapon damage.
* Proper Kick Glitch (Like in original ME: https://www.youtube.com/watch?v=zK5y3NBUStc).
* You can now dive to your death =).
* Allowed punching while crouching.
* Grapple fixes. Now it moves with entity it attached to and other players can see it.
* More reliable grappling.

*P.S: datæ really doesn't know how to code, eh?*
<br>*P.P.S: This version is named differently so you can keep this and the [original repo](github.com/jonnybro/beatrun) installed. Have fun ;)*