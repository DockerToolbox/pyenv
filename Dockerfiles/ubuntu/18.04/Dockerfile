FROM ubuntu:18.04

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		build-essential=12.4ubuntu1 \
		ca-certificates=20210119~18.04.1 \
		git=1:2.17.1-1ubuntu0.8 \
		libbz2-dev=1.0.6-8.1ubuntu0.2 \
		libffi-dev=3.2.1-8 \
		libreadline-dev=7.0-3 \
		libsqlite3-dev=3.22.0-1ubuntu0.4 \
		libssl-dev=1.1.1-1ubuntu2.1~18.04.9 \
		wget=1.19.4-1ubuntu2.2 \
		zlib1g-dev=1:1.2.11.dfsg-0ubuntu2 \
		&& \
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
	echo 'export PATH="${HOME}/.pyenv/shims:${HOME}/.pyenv/bin:${PATH}"' >> ~/.bashrc && \
	echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
        apt-get -y remove --purge \
                git \
                && \
        apt-get -y autoremove && \
        rm -rf /var/lib/apt/lists/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

