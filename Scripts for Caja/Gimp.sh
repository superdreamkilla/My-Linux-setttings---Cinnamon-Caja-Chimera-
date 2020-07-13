#!/bin/dash
if mimetype -b "$1" | grep image; then
   gimp "$1"
fi
