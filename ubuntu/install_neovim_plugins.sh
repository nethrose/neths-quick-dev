#!/bin/bash

read -p "Do you want to run the Neovim plugin configuration? (y/n): " answer
case ${answer:0:1} in
    y|Y )
        echo "Running the Neovim plugin configuration..."
        ansible-playbook neovim_plugins.yml
    ;;
    * )
        echo "Skipping the Neovim plugin configuration."
    ;;
esac
