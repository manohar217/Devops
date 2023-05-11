cat var.txt

cat var.txt > $input
for n in $input
do
touch $n.txt
done
