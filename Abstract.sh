mkdir Abstract
for x in $(ls Page); do 
    head -n 1 Page/$x > Abstract/$x;
done
