#!/bin/bash

cd /tmp
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i /tmp/ripgrep_11.0.2_amd64.deb
