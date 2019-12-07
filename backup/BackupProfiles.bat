@echo off
taskkill /im firefox.exe
@echo 关闭火狐浏览器后自动开始备份……
ping -n 3 127.1>nul
::取得当前批处理所在路径
cd /d %~dp0
::设置要备份目标的路径
set ProfilesPath=..\
::设置备份存放的路径以及压缩包文件名，通常使用的是长日期那么就是%date:~5,2%%date:~8,2%）
set ArchiveName=..\..\Profiles_leitbogioro.7z
::设置要打包的文件以及文件夹，请酌情自己添加
7z.exe u -up1q3r2x2y2z2w2 %ArchiveName% "%ProfilesPath%chrome" "%ProfilesPath%browser-extension-data" "%ProfilesPath%*extensions*" "%ProfilesPath%*extension-data*" "%ProfilesPath%storage" "%ProfilesPath%Plugins" "%ProfilesPath%gmp-widevinecdm" "%ProfilesPath%sessionstore-backups" "%ProfilesPath%cert_override.txt" "%ProfilesPath%cookies.sqlite" "%ProfilesPath%favicons.sqlite" "%ProfilesPath%places.sqlite" "%ProfilesPath%addons.json" "%ProfilesPath%addonStartup.json.lz4" "%ProfilesPath%content-prefs.sqlite" "%ProfilesPath%permissions.sqlite" "%ProfilesPath%sessionstore.jsonlz4" "%ProfilesPath%storage.sqlite" "%ProfilesPath%storage-sync.sqlite" "%ProfilesPath%extensions.json" "%ProfilesPath%extension-settings.json" "%ProfilesPath%prefs.js" "%ProfilesPath%user.js" "%ProfilesPath%xulstore.json" "%ProfilesPath%*search*"
@echo 备份已完成！
