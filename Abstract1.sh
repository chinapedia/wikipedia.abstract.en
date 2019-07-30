mkdir Abstract
for x in $(ls Page); do 
    head -n 1 Page/$x > Abstract/$x;
    if grep -q "\.jpg" "Abstract/$x"; then
        head -n 2 Page/$x | tail -n 1 > Abstract/$x;
    fi
done
