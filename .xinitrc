#!/bin/bash

# bell is hell
xset b off

# Xresrouces
xrdb -merge ~/.Xresources

# redshift pour les petits yeux
redshift &

# start i3
exec i3
