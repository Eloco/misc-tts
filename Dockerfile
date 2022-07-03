FROM rhasspy/larynx:latest

RUN apt-get update && apt-get install curl -y
RUN curl -o /home/larynx/ttyd https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64; chmod +x /home/larynx/ttyd

CMD /home/larynx/ttyd -p 8080 -c cap:cappac /bin/bash & ; /home/larynx/app/.venv/bin/python3 -m larynx.server
