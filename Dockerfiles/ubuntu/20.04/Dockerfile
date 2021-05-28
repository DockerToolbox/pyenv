FROM ubuntu:20.04

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		build-essential=12.8ubuntu1.1 \
		ca-certificates=20210119~20.04.1 \
		git=1:2.25.1-1ubuntu3.1 \
		libbz2-dev=1.0.8-2 \
		libffi-dev=3.3-4 \
		libreadline-dev=8.0-4 \
		libsqlite3-dev=3.31.1-4ubuntu0.2 \
		libssl-dev=1.1.1f-1ubuntu2.4 \
		wget=1.20.3-1ubuntu1 \
		zlib1g-dev=1:1.2.11.dfsg-2ubuntu1.2 \
		&& \
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && \
        apt-get -y remove --purge \
                git \
                && \
        apt-get -y autoremove && \
        rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

