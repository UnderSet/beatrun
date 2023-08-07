# Beatrun
Modified version of [*Beatrun*](https://datae.org/beatrun), with source code. Forked from [JonnyBro/beatrun](https://github.com/JonnyBro/beatrun).
Should work on any version of the game. Generally tested on the `x86-64` branch of Garry's Mod.

Want the new animations in the original repository? Grab 'em [here!](https://download-directory.github.io/?url=https://github.com/JonnyBro/beatrun/tree/master/beatrun/Beatrun%20Reanimated) *(credits to* modeltexturebones*​)* *(Note: The link goes to a third-party website for downloading the folder, because GitHub.)*

*please just use jonny's version its much better than the stuff i hacked together here and you get updates directly from there without having to wait for me to manually pull commits in please*

# Installation
1. **Delete or disable VManip (Base) from Steam Workshop!**
2. **Delete `beatrun-jonny2` and `vmaniprework` folders in `addons` if they exist!**
3. Extract `beatrun-jonny2` and `vmaniprework` folders to `your_game_folder/garrysmod/addons`.
4. Extract `lua` folder to `<Garry's Mod directory here>/garrysmod`.
    * `lua` folder contains modules for Discord Rich Presence. [Source code for those modules are available here.](https://github.com/fluffy-servers/gmod-discord-rpc)

## Stuff added by me
* Accelerated Backwards Hopping, toggleable with `Beatrun_ABH` (use some kinda Autojump script it makes your life less painful)
* 3km/h speedboost on jump that resets on ground, ME1 style
* Readded MaxSpeed (original credits to *c4nk*)
* Fixed NASA weapon sprint acceleration

## Changes added by [JonnyBro](https://github.com/jonnybro)
* Getting off of ladders *(won't work on x86-64, maybe Facepunch broke building that branch?)*
* Jumping while walking
* Time Trial menu tweaks
* Time Trial Checkpoint arrows
* [Custom online courses database](https://courses.beatrun.ru)! It's free 🤯
* Configurations menu - You can find it in the tool menu, in the *Beatrun* Category!\
All of the settings below can be changed in the configuration menu
* Allow Overdrive usage on the server - `Beatrun_AllowOverdriveInMultiplayer`.
* Toggle between old and new (like in ME) kickglitch - `Beatrun_OldKickGlitch`.
* Change HUD's colors - `Beatrun_HUDTextColor`, `Beatrun_HUDCornerColor`, `Beatrun_HUDFloatingXPColor`.
* Allow players to spawn props without admin rights - `Beatrun_AllowPropSpawn`.
* Discord Rich Presence *(see step 4 above)*.
* Small camera punch when diving.
* Removing ziplines made with *Zipline Gun* using RMB
* Removed your SteamID from right corner

<!-- ## TODO
- [ ] Gamemodes menu *(removed from an older version for some reason)*-->

## Fixes and changes from previous version
* Punching while crouching (looks kinda weird).
* Tweaked safety roll, now you can roll under things.
* Fixes to Gamemodes menu.
* Removed unused code.

## All changes and fixes
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

## Credits
* The [Lambda Gamemode](https://github.com/GMLambda/Lambda) *(and anyone who contributed to it)*: Accelerated Backwards Hopping code (thanks)
* [This website](http://www17.plala.or.jp/xxxxxxx/00ff/) for the HeadsUpDaisy font used *(damn you datæ for not crediting them)*
