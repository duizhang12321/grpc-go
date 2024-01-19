body=(1024)
concurrent=(100 200 400 600 800 1000)
connections=2

for b in ${body[@]}; do
    for c in ${concurrent[@]}; do
        ./run_bench.sh -r $c -c $connections -req $b -resp $b >> log.log 2>&1
    done
done