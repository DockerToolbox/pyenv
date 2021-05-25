FROM alpine:3.13

# hadolint ignore=SC2016,DL3018,DL4006
RUN apk update && \ 
	apk add --no-cache \
		bash=5.1.0-r0 \
		bzip2-dev=1.0.8-r1 \
		git=2.30.2-r0 \
		libffi-dev=3.3-r2 \
		openssl-dev=1.1.1k-r0 \
		readline-dev=8.1.0-r0 \
		sqlite-dev=3.34.1-r0 \
		zlib-dev=1.2.11-r3 \
		&& \
	apk add --no-cache --virtual \
		build-dependencies \
		build-base \
		linux-headers \
		&& \
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
	echo 'export PATH="${HOME}/.pyenv/shims:${HOME}/.pyenv/bin:${PATH}"' >> ~/.bashrc && \
	echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
	apk del git && \
	rm -rf /var/cache/apk/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

