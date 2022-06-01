# ubuntu-dotnet

![Trueosiris Rules](https://img.shields.io/badge/trueosiris-rules-f08060)
[![Docker Pulls](https://badgen.net/docker/pulls/trueosiris/ubuntu-dotnet?icon=docker&label=pulls)](https://hub.docker.com/r/trueosiris/ubuntu-dotnet/)
[![Docker Stars](https://badgen.net/docker/stars/trueosiris/ubuntu-dotnet?icon=docker&label=stars)](https://hub.docker.com/r/trueosiris/ubuntu-dotnet/)
[![Docker Image Size](https://badgen.net/docker/size/trueosiris/ubuntu-dotnet?icon=docker&label=image%20size)](https://hub.docker.com/r/trueosiris/ubuntu-dotnet/)
![Github stars](https://badgen.net/github/stars/trueosiris/docker-ubuntu-dotnet?icon=github&label=stars)
![Github forks](https://badgen.net/github/forks/trueosiris/docker-ubuntu-dotnet?icon=github&label=forks)
![Github issues](https://img.shields.io/github/issues/TrueOsiris/docker-ubuntu-dotnet)
![Github last-commit](https://img.shields.io/github/last-commit/TrueOsiris/docker-ubuntu-dotnet)

Stable baseimage with ubuntu 22.04 and dotnet sdk 6.0.5 for running dotnet libraries in a linux container<br>
Also installed: wine, wine64 and mono.

     docker run -d --name='ubuntu-dotnet' --net='bridge' -e TZ="Europe/Paris" 'trueosiris/ubuntu-dotnet'

