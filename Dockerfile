FROM rhasspy/larynx:latest

USER root
COPY local /local
RUN mv /local /home/larynx/app/local;chmod 777 -R /home/larynx/app/local
USER larynx
