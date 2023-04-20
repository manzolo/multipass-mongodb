# Multipass mongodb VM
This project help to create an instance of mongodb in a multipass vm

## Prerequisites
### Ubuntu 22.04
### Install canonical multipass from snap

`
sudo snap install multipass
`

## Install VM
### Set parameters:
```
cp env.dist env
```
### Edit env parameters
```
nano env
```
### Install
```
./setup.sh
```
### Uninstall
```
./uninstall.sh
```