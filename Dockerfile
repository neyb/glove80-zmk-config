FROM nixos/nix:latest

WORKDIR /wrk

ARG ZMK_REF=v23.12
RUN git clone --depth 1 --single-branh --filter=blob:none --recurse-submodules --branch $ZMK_REF https://github.com/moergo-sc/zmk.git src

CMD [ "nix-build", "config", "-o", "output" ]