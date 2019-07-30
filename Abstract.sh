mkdir Abstract
for x in $(ls Page); do 
    [[ "$x" =~ ^[[:alnum:]]*$ ]] && head -n 1 Page/$x > Abstract/$x;
done
