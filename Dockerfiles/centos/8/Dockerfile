FROM centos:8

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		bzip2-devel-1.0.6 \
		gcc-8.3.1 \
		git-2.27.0 \
		libffi-devel-3.1 \
		make-4.2.1 \
		openssl-devel-1.1.1g \
		patch-2.7.6 \
		readline-devel-7.0 \
		sqlite-devel-3.26.0 \
		tar-1.30 \
		zlib-devel-1.2.11 \
		&& \
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && \
	yum remove -y \
		git \
		&& \
	yum autoremove && \
	yum clean all && \
	rm -rf /var/cache/yum

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

