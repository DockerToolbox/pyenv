FROM amazonlinux:1

# hadolint ignore=SC2016
RUN yum makecache && \ 
	yum install -y \ 
		bzip2-devel-1.0.6 \ 
		gcc-4.8.5 \ 
		git-2.18.5 \ 
		libffi-devel-3.0.13 \ 
		make-3.82 \ 
		openssl-devel-1.0.2k \ 
		patch-2.7.1 \ 
		readline-devel-6.2 \ 
		sqlite-devel-3.7.17 \ 
		tar-1.26 \ 
		zlib-devel-1.2.8 \
                && \
	git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
	echo 'export PATH="${HOME}/.pyenv/shims:${HOME}/.pyenv/bin:${PATH}"' >> ~/.bashrc && \
	echo 'eval "$(pyenv init -)"' >> ~/.bashrc && \
	yum autoremove -y && \
	yum clean all && \
	rm -rf /var/cache/yum

WORKDIR /root

ENTRYPOINT ["/bin/bash"]
