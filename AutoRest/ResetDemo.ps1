uninstall-module xkcd -Force
copy 'cd C:\repos\PSConfAsia2019\AutoRest\Visual Studio Code Host_history.txt' 'C:\Users\AdamMurray\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine' -force
#Remove xkcd from Azure Devops - https://dev.azure.com/apr2019/Workshop/_packaging?_a=feed&feed=Test
rm C:\Users\AdamMurray\Documents\WindowsPowerShell\modules\xkcd -recurse -force

cd cd C:\repos\PSConfAsia2019\AutoRest
git clean -fxd
cd C:\repos\Summit2019_muzz
git clean -fxd


code C:\repos\Summit.code-workspace

cd cd C:\repos\PSConfAsia2019\AutoRest\xkcd
Clear-Host
"Ready to go"