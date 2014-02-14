#!/bin/bash
sed 's/``/`/g' ./data/austen.txt | sed "s/''/'/g" | sed 's/Fitzwilliam/Mahindar/g' | sed 's/Darcy/Nitish/g' | sed 's/Elizabeth/Dinesh/g' > ./data/pnp_austen_cs296.txt
# Fitzwilliam is Mahindar, Darcy is Nitish, Elizabeth is Dinesh
