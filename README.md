<h1 align="center">
	<a href="https://github.com/WolfSoftware">
		<img src="https://raw.githubusercontent.com/WolfSoftware/branding/master/images/general/banners/64/black-and-white.png" alt="Wolf Software Logo" />
	</a>
	<br>
	Docker containers with pyenv installed
</h1>

<p align="center">
	<a href="https://travis-ci.com/DockerToolbox/pyenv">
		<img src="https://img.shields.io/travis/com/DockerToolbox/pyenv/master?style=for-the-badge&logo=travis" alt="Build Status">
	</a>
	<a href="https://github.com/DockerToolbox/pyenv/releases/latest">
		<img src="https://img.shields.io/github/v/release/DockerToolbox/pyenv?color=blue&style=for-the-badge&logo=github&logoColor=white&label=Latest%20Release" alt="Release">
	</a>
	<a href="https://github.com/DockerToolbox/pyenv/releases/latest">
		<img src="https://img.shields.io/github/commits-since/DockerToolbox/pyenv/latest.svg?color=blue&style=for-the-badge&logo=github&logoColor=white" alt="Commits since release">
	</a>
	<a href="LICENSE.md">
		<img src="https://img.shields.io/badge/license-MIT-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" alt="Software License">
	</a>
	<br>
	<a href=".github/CODE_OF_CONDUCT.md">
		<img src="https://img.shields.io/badge/Code%20of%20Conduct-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
	</a>
	<a href=".github/CONTRIBUTING.md">
		<img src="https://img.shields.io/badge/Contributing-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
	</a>
	<a href=".github/SECURITY.md">
		<img src="https://img.shields.io/badge/Report%20Security%20Concern-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
	</a>
	<a href=".github/SUPPORT.md">
		<img src="https://img.shields.io/badge/Get%20Support-blue?style=for-the-badge&logo=read-the-docs&logoColor=white" />
	</a>
</p>

## Overview

This is a selection of Docker containers preinstalled with [pyenv](https://github.com/pyenv/pyenv) so that you can use any version of python you want, or even install multiple versions.

We try to offer as many operating system flavours as possible, but we only use currently supported versions of each one.

| Dockerfile | Docker Hub Repo | Docker Hub Tags |
| --- | --- | --- |
| [Alpine Linux 3.10](Dockerfiles/alpine/3.10/Dockerfile)             | [wolfsoftwareltd/pyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/pyenv-alpine)           | 3.10                        |
| [Alpine Linux 3.11](Dockerfiles/alpine/3.11/Dockerfile)             | [wolfsoftwareltd/pyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/pyenv-alpine)           | 3.11                        |
| [Alpine Linux 3.12](Dockerfiles/alpine/3.12/Dockerfile)             | [wolfsoftwareltd/pyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/pyenv-alpine)           | 3.12                        |
| [Alpine Linux 3.13](Dockerfiles/alpine/3.13/Dockerfile)             | [wolfsoftwareltd/pyenv-alpine](https://hub.docker.com/r/wolfsoftwareltd/pyenv-alpine)           | 3.13, latest                |
| [Amazon Linux 1](Dockerfiles/amazonlinux/1/Dockerfile)              | [wolfsoftwareltd/pyenv-amazonlinux](https://hub.docker.com/r/wolfsoftwareltd/pyenv-amazonlinux) | 1                           |
| [Amazon Linux 2](Dockerfiles/amazonlinux/2/Dockerfile)              | [wolfsoftwareltd/pyenv-amazonlinux](https://hub.docker.com/r/wolfsoftwareltd/pyenv-amazonlinux) | 2, latest                   |
| [Centos 7](Dockerfiles/centos/7/Dockerfile)                         | [wolfsoftwareltd/pyenv-centos](https://hub.docker.com/r/wolfsoftwareltd/pyenv-centos)           | 7,                          |
| [Centos 8](Dockerfiles/centos/8/Dockerfile)                         | [wolfsoftwareltd/pyenv-centos](https://hub.docker.com/r/wolfsoftwareltd/pyenv-centos)           | 8, latest                   |
| [Debian 9 (Stretch)](Dockerfiles/debian/9/Dockerfile)               | [wolfsoftwareltd/pyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/pyenv-debian)           | 9, stretch                  |
| [Debian 9 (Stretch Slim)](Dockerfiles/debian/9-slim/Dockerfile)     | [wolfsoftwareltd/pyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/pyenv-debian)           | 9-slim, stretch-slim        |
| [Debian 10 (Buster)](Dockerfiles/debian/10/Dockerfile)              | [wolfsoftwareltd/pyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/pyenv-debian)           | 10, buster, latest          |
| [Debian 10 (Buster Slim)](Dockerfiles/debian/10-slim/Dockerfile)    | [wolfsoftwareltd/pyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/pyenv-debian)           | 10-slim, buster-slim        |
| [Debian 11 (Bullseye)](Dockerfiles/debian/11/Dockerfile)            | [wolfsoftwareltd/pyenv-centos](https://hub.docker.com/r/wolfsoftwareltd/pyenv-centos)           | 11, bullseye                |
| [Debian 11 (Bullseye Slim)](Dockerfiles/debian/11-slim/Dockerfile)  | [wolfsoftwareltd/pyenv-debian](https://hub.docker.com/r/wolfsoftwareltd/pyenv-debian)           | 11-slim, bullseye-slim      |
| [Ubuntu 16.04 (Xenial Xerus)](Dockerfiles/ubuntu/16.04/Dockerfile)  | [wolfsoftwareltd/pyenv-ubuntu](https://hub.docker.com/r/wolfsoftwareltd/pyenv-ubuntu)           | 16.04, xenial               |
| [Ubuntu 18.04 (Bionic Beaver)](Dockerfiles/ubuntu/18.04/Dockerfile) | [wolfsoftwareltd/pyenv-ubuntu](https://hub.docker.com/r/wolfsoftwareltd/pyenv-ubuntu)           | 18.04, bionic               |
| [Ubuntu 20.04 (Focal Fossa)](Dockerfiles/ubuntu/20.04/Dockerfile)   | [wolfsoftwareltd/pyenv-ubuntu](https://hub.docker.com/r/wolfsoftwareltd/pyenv-ubuntu)           | 20.04, focal, latest        |

> Debian bullseye isn't technically Debian 11 (yet)

## Naming convention

### Local containers

```
  pyenv-<os>-<version> e.g. pyenv-debian-10
```

### Published containers

```
  wolfsoftwareltd/pyenv-<os>:<version> e.g. wolfsoftwareltd/pyenv-debian:10
```

## Contributors

<p>
	<a href="https://github.com/TGWolf">
		<img src="https://img.shields.io/badge/Wolf-black?style=for-the-badge" />
	</a>
</p>

## Show Support

<p>
	<a href="https://ko-fi.com/wolfsoftware">
		<img src="https://img.shields.io/badge/Ko%20Fi-blue?style=for-the-badge&logo=ko-fi&logoColor=white" />
	</a>
</p>
