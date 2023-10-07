#!/bin/bash
rm -rf ~/.local/share/nvim/*
rm -rf  ~/.config/nvim && mkdir -p ~/.config/nvim
cd fast
cp init.lua ~/.config/nvim
