FROM debian:bullseye-slim

# hadolint ignore=SC2016
RUN apt-get update && \
	apt-get -y --no-install-recommends install \
		build-essential=12.9 \
		ca-certificates=20210119 \
		git=1:2.30.2-1 \
		libbz2-dev=1.0.8-4 \
		libffi-dev=3.3-6 \
		libreadline-dev=8.1-1 \
		libsqlite3-dev=3.34.1-3 \
		libssl-dev=1.1.1k-1 \
		wget=1.21-1+b1 \
		zlib1g-dev=1:1.2.11.dfsg-2 \
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

