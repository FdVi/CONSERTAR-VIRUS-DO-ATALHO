@echo off
echo Consertador do v�rus do atalho
echo Matando processo no computador, se tiver
taskkill /F /IM wscript.exe
echo Insira a letra do pendrive com o v�rus. Exemplo: "E" para disco E:
set /p dl="Insira a letra: "
echo Trabalhando para desocultar o disco %dl%
attrib -r -s -h /s /d %dl%:\*
echo Deletando v�rus do computador
del "C:\Users\aula\AppData\Roaming\Microsoft Office\Microsoft Excel.WsF"
echo Deletando v�rus do pendrive
del "%dl%:\Microsoft Excel.WsF"
echo Deletando atalhos...
del "%dl%\*.lnk"
echo Pronto!

pause