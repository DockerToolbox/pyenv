FROM centos:7

# hadolint ignore=SC2016
RUN yum makecache && \
	yum install -y \
		bzip2-devel-1.0.6 \
		gcc-4.8.5 \
		git-1.8.3.1 \
		libffi-devel-3.0.13 \
		make-3.82 \
		openssl-devel-1.0.2k \
		patch-2.7.1 \
		readline-devel-6.2 \
		sqlite-devel-3.7.17 \
		tar-1.26 \
		zlib-devel-1.2.7 \
		yum-plugin-remove-with-leaves-1.1.31 \
		&& \
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
        echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
	echo 'eval "$(pyenv init --path)"' >> ~/.bashrc && \
	yum remove -y \
		git \
		--remove-leaves \
		&& \
	yum clean all && \
	rm -rf /var/cache/yum

WORKDIR /root

ENTRYPOINT ["/bin/bash"]

