ENV PATH="/root/.anyenv/envs/pyenv/bin:$PATH"
ENV PYENV_ROOT=/root/.anyenv/envs/pyenv

WORKDIR /root

ENTRYPOINT ["/bin/bash"]
