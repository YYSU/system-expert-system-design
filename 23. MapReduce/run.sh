#! /bin/bash

# Clean upo stray files from the previous run.
rm -rf host1/map_results/*.txt
rm -rf host2/map_results/*.txt
rm -rf map_results/*.txt
rm -rf reduce_results/*.txt

# Run the map step on both Hosts in parallel.
HOST=host1 node map.js &
HOST=host2 node map.js &

wait

# Run the shuffle step.
HOSTS=host1,host2 node shuffle.js

# Run the reduce step.
node reduce.js

# View tge final result
cat reduce_results/results.txt
