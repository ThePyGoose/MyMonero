@echo off
:check
ping 127.0.0.1 > nul
echo "You are using the repository from github.com/ThePyGoose/MyMonero"
cls

goto check
