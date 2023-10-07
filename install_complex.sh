#!/bin/bash
rm -rf ~/.local/share/nvim/*
rm -rf  ~/.config/nvim && mkdir -p ~/.config/nvim
cp complex/* -rf ~/.config/nvim
