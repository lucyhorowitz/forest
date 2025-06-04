#!/usr/bin/env python3
# append cal-letter defs for A–Z to macros.tree
import string, pathlib

path = pathlib.Path("/Users/lucyhorowitz/Documents/GitHub.nosync/forest/macros/macros.tree")
with path.open("a") as f:
    for c in string.ascii_lowercase:
        f.write(f"\\def\\mono{c}{{#{{\\texttt{{{c}}}}}}}\n")