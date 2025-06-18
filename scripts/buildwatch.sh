#!/usr/bin/env bash
umask 022
fswatch -or trees role | xargs -n1 -I{} sh -c \
  './forester build && \
   rsync -az --delete \
         --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r \
         output/~lucy/forest/ lucy@login.math.berkeley.edu:~/public_html/forest/'