FROM debian:bullseye-slim

# hadolint ignore=SC2016
RUN apt-get update && \ 
	apt-get -y --no-install-recommends install \ 
		build-essential=12.9 \ 
		ca-certificates=20210119 \ 
		git=1:2.30.0-1 \ 
		libbz2-dev=1.0.8-4 \ 
		libffi-dev=3.3-5 \ 
		libreadline-dev=8.1-1 \ 
		libsqlite3-dev=3.34.1-1 \ 
		libssl-dev=1.1.1i-3 \ 
		wget=1.21-1+b1 \ 
		zlib1g-dev=1:1.2.11.dfsg-2 \
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

