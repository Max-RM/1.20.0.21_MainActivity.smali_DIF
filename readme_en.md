# 1.20.0.21_MainActivity.smali_DIF
Differences between files. It is very important, because it allows you to create an MCBE apk with the old way of storing worlds.

Thanks to inotflying (Egornya) for inventing this method.

02.05.2023 I learned how to create MCBE apk that use the old path to store worlds - /storage/emulated/0/games/com.mojang/minecraftWorlds Instead of the new /storage/emulated/0/Android/data/com.mojang.minecraftpe/files/games/com.mojang/minecraftWorlds

The point. - Due to Android 13 restrictions, now you (unless you have root access) cannot modify files located in the .../Android/data... folders. Even if you use a third-party explorer (although there is a chance that some explorers have found workarounds, but that's not the point) The point is that Blocktopograph, one of the best NBT editors for Android, now can't edit the worlds in there. This also applies to the NEFA project and I was obliged to find ways to solve the problems. That's where this repository comes in. Using the information in it you can personally edit the MCBE apk and make it store worlds in the old way.

First, take MCBE apk (assuming you already have it) decompile it using Apktool M https://4pda.to/forum/index.php?showtopic=1002506 Go to /smali/com/mojang/minecraftpe in the decompiled apk folder, find the MainActivity.smali file and make changes like these: https://github.com/Max-RM/1.20.0.21_MainActivity.smali_DIF/commit/97d794adef66fb586103744ae0a33e090c136b74 That is, just make changes based on the changes shown in the link. Then in Android.manifest.xml of the game make the following changes: https://ibb.co/mHyRWZ3 i.e. insert the line:
```
    <uses-permission

android:name="android.permission.MANAGE_EXTERNAL_STORAGE" />
```
and then start compiling in apktool M.
