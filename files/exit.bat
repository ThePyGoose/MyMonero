@echo off
echo DRP is Launch!!!
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings > Secrets > Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels "
echo Username: administrator
echo Password: @admin69
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Unable to get NGROK tunnel, make sure NGROK_AUTH_TOKEN is correct in Settings > Secrets > Repository secret. Maybe your previous VM is still running: https://dashboard.ngrok.com/status/tunnels " & ping 127.0.0.1 >Nul & exit
echo "You are using the repository from github.com/ThePyGoose/KryptexCore"
:check
ping 127.0.0.1 > nul
cls

goto check