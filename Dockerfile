FROM	cm2network/steamcmd


ENV		STARBOUND_PATH="/opt/starbound"


WORKDIR	"${STEAMCMDDIR}"


VOLUME	"${STARBOUND_PATH}"


COPY	["./start.sh", "."]
COPY	["./steam.cmd", "."]
COPY	["./update.sh", "."]


RUN		["chmod", "+x", "./start.sh"]
RUN		["chmod", "+x", "./update.sh"]


EXPOSE	21025/tcp
EXPOSE	21025/udp