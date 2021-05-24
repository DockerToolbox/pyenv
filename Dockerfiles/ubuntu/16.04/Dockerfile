FROM ubuntu:16.04

# hadolint ignore=SC2016
RUN apt-get update && \ 
	apt-get -y --no-install-recommends install \ 
		build-essential=12.1ubuntu2 \ 
		ca-certificates=20210119~16.04.1 \ 
		git=1:2.7.4-0ubuntu1.10 \ 
		libbz2-dev=1.0.6-8ubuntu0.2 \ 
		libffi-dev=3.2.1-4 \ 
		libreadline-dev=6.3-8ubuntu2 \ 
		libsqlite3-dev=3.11.0-1ubuntu1.5 \ 
		libssl-dev=1.0.2g-1ubuntu4.19 \ 
		wget=1.17.1-1ubuntu1.5 \ 
		zlib1g-dev=1:1.2.8.dfsg-2ubuntu4.3 \
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
