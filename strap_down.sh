#!/bin/sh

cp -r ~/.emacs.d/init.el ~/bootstrap_emacs/emacsconf
cd ~/bootstrap_emacs
git commit -am "$date automated from strap_down"
