mkdir Abstract
for x in $(ls Page); do 
    [[ "$x" =~ ^[[:alnum:]_]*\.md$ ]] && echo $x && head -n 1 Page/$x > Abstract/$x;
done
