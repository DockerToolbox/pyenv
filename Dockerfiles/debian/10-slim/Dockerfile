FROM debian:buster-slim

# hadolint ignore=SC2016
RUN apt-get update && \ 
	apt-get -y --no-install-recommends install \ 
		build-essential=12.6 \ 
		ca-certificates=20200601~deb10u2 \ 
		git=1:2.20.1-2+deb10u3 \ 
		libbz2-dev=1.0.6-9.2~deb10u1 \ 
		libffi-dev=3.2.1-9 \ 
		libreadline-dev=7.0-5 \ 
		libsqlite3-dev=3.27.2-3+deb10u1 \ 
		libssl-dev=1.1.1d-0+deb10u6 \ 
		wget=1.20.1-1.1 \ 
		zlib1g-dev=1:1.2.11.dfsg-1 \
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

