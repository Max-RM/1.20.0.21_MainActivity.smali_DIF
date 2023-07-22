# 1.20.0.21_MainActivity.smali_DIF
Differences between files. It is very important, because it allows you to create an MCBE apk with the old way of storing worlds.

Спасибо inotflying (Egornya) за изобретение этого метода.

02.05.2023 я научился создавать MCBE apk которые используют старый путь хранения миров - /storage/emulated/0/games/com.mojang/minecraftWorlds
Вместо нового /storage/emulated/0/Android/data/com.mojang.minecraftpe/files/games/com.mojang/minecraftWorlds

Смысл? - Из-за ограничений Android 13 теперь вы (если у вас нет root доступа) не можете изменять файлы находящиеся в папках  .../Android/data... Даже если вы используете сторонние проводники (хотя есть вероятность, что какие-то проводники нашли обходные пути, но сейчас не об этом)
Смысл в том, что и Blocktopograph, один из лучших NBT редакторов для Android теперь не может редактировать миры находящиеся там. Это так-же относиться к проекту NEFA и я был обязан найти пути решения проблем.
Здесь на помощь и приходит этот репозиторий. Используя информацию в нëм вы можете лично отредактировать apk MCBE и заставить его хранить миры по старому пути.

Сначала возьмите apk MCBE (предполагается, что он у вас уже есть) декомпилируйте его используя Apktool M https://4pda.to/forum/index.php?showtopic=1002506
Перейдите по пути /smali/com/mojang/minecraftpe находясь в папке декомпилированного apk, найдите файл  MainActivity.smali и внесите в него изменения типо этих: https://github.com/Max-RM/1.20.0.21_MainActivity.smali_DIF/commit/97d794adef66fb586103744ae0a33e090c136b74
То есть просто выполните изменения на основе показанных по ссылке.
Потом в Android.manifest.xml игры внесите такие изменения: https://ibb.co/mHyRWZ3 то есть вставьте строку: 

``<uses-permission 
    	android:name="android.permission.MANAGE_EXTERNAL_STORAGE" />``

после чего начните компиляцию в apktool M.
