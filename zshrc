# Plugin manager
source ${HOME}/.zsh/zshrc.d/plugin_manager/zplug.zsh

# Plugin
for zshrc in ${HOME}/.zsh/zshrc.d/plugin/*.zsh; do
    source $zshrc
done

# Zsh itself
for zshrc in ${HOME}/.zsh/zshrc.d/zsh/*.zsh; do
    source $zshrc
done
