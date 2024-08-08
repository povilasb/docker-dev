FROM ubuntu:24.10

RUN apt-get update && apt-get install -y curl git neovim zsh

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

RUN curl -LsSf https://astral.sh/uv/install.sh | sh
RUN ~/.cargo/bin/uv python install 3.12

CMD while true ; do sleep 5 ; done
