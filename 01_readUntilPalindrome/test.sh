cd input
for i in *
do
    echo "Haskell"
    diff <(../haskellSolution < ${i}) ../output/${i}
    echo "C++"
    diff <(../cppSolution < ${i}) ../output/${i}
done
