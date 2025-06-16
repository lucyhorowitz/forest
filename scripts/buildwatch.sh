#!/usr/bin/env bash
umask 022
fswatch -or trees role | xargs -n1 -I{} sh -c './forester build --dev && rsync -az --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r --delete output/~lucy/ lucy@login.math.berkeley.edu:~/public_html/forest/'