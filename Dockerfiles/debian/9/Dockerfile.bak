FROM debian:stretch

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		build-essential=12.3 \
		ca-certificates=20200601~deb9u2 \
		git=1:2.11.0-3+deb9u7 \
		libbz2-dev=1.0.6-8.1 \
		libffi-dev=3.2.1-6 \
		libreadline-dev=7.0-3 \
		libsqlite3-dev=3.16.2-5+deb9u3 \
		libssl-dev=1.1.0l-1~deb9u3 \
		wget=1.18-5+deb9u3 \
		zlib1g-dev=1:1.2.8.dfsg-5 \
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

