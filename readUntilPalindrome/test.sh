cd input
for i in *
do
    diff <(../haskellSolution < ${i}) ../output/${i}
    diff <(../cppSolution < ${i}) ../output/${i}
done
