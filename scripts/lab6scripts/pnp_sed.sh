#!/bin/bash
sed 's/``/`/g' austen.txt | sed "s/''/'/g" | sed 's/Fitzwilliam/Dinesh/g' | sed 's/Darcy/Nitish/g' | sed 's/Elizabeth/Mahindar/g' > ./data/pnp_austen_cs296.txt
