#!/usr/bin/env bash
umask 022
fswatch -or trees | xargs -n1 -I{} sh -c \
  './forester build && \
   rsync -az --delete \
         --exclude='\''daily/'\'' --exclude='\''meta/'\'' --exclude='\''priv/'\'' \
         --chmod=Du=rwx,Dg=rx,Do=rx,Fu=rw,Fg=r,Fo=r \
         output/~lucy/forest/ lucy@login.math.berkeley.edu:~/public_html/forest/ && \
   rsync -az \
         --chmod=Fu=rw,Fg=r,Fo=r \
         output/forest/*.xsl lucy@login.math.berkeley.edu:~/public_html/forest/'
