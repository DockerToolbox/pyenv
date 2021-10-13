FROM alpine:3.11

# hadolint ignore=SC2016,DL3018,DL4006
RUN apk update && \ 
	apk add --no-cache \
		bash=5.0.11-r1 \
		bzip2-dev=1.0.8-r1 \
		git=2.24.4-r0 \
		libffi-dev=3.2.1-r6 \
		openssl-dev=1.1.1k-r0 \
		readline-dev=8.0.1-r0 \
		sqlite-dev=3.30.1-r2 \
		zlib-dev=1.2.11-r3 \
		&& \
	apk add --no-cache --virtual \
		build-dependencies \
		build-base \
		linux-headers \
		&& \
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && \
	apk del git && \
	rm -rf /var/cache/apk/*

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

