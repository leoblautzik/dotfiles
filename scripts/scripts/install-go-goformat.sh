#!/bin/bash
sudo pacman -S go
go install github.com/segmentio/golines@latest
go install github.com/incu6us/goimports-reviser/v3@latest
go install mvdan.cc/gofumpt@latest
