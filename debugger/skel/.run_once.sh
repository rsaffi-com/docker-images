#!/bin/bash

if [[ ! -z "${TMUX}" ]] ; then
  tmux run-shell /root/.tmux/plugins/tpm/bindings/install_plugins
  chmod 644 $0
fi
