csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Fraction.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-Fraction.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"



csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential.csv

csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Sequential.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-transpose.csv:  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential.csv

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential.0.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential.1.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential.2.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential.3.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-explore-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-explore-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-explore-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-explore-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-always-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-always-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-always-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-always-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/BindingsDSE-sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Fraction.csv  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-Fraction.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Fraction.csv		\
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-Fraction.csv	\
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel.csv

csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Sobel-Parallel.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel.csv  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel.csv		\
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv	\
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel.csv

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4.0.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4.1.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4.2.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4.3.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500  --throughputDivider 5 --memoryDivider 20  --percentage 1 "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-explore-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-explore-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-explore-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-explore-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20  --percentage 1  "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-always-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-always-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-always-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-always-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/BindingsDSE-sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20  --percentage 1 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled-Reference.csv:  csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv 

csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Fraction.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always-Fraction.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance.csv
csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance.csv

csv/pareto-fronts/Global-ModuloScheduling-BindingsDSE-Multicamera-1instance.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance.csv  \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance.0.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance.1.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance.2.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance.3.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 10 --percentage 1  "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-always-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-always-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-always-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-always-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 10 --percentage 1  "$${@}"

csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv
csv/pareto-fronts/ModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-explore-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-explore-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-explore-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-explore-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/BindingsDSE-multicamera-1instance-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 10 --percentage 1  "$${@}"





csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled-Explore.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled-Always.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled-Reference.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv

csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Fraction.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-Fraction.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always-Fraction.csv  \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Fraction.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-Fraction.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always-Fraction.csv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Reference.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv

csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv: generate-glb-pareto.py  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv  \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-transpose.csv:  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential.csv: generate-unified-pareto-fronts.py \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential.0.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential.1.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential.2.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential.3.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore-transpose.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv: generate-unified-pareto-fronts.py \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-explore-MRB.0.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-explore-MRB.1.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-explore-MRB.2.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-explore-MRB.3.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always-transpose.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv: generate-unified-pareto-fronts.py \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-always-MRB.0.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-always-MRB.1.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-always-MRB.2.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-always-MRB.3.tsv \
        hypervolume/sobel-sequential-transformer/runs/Sorting-Inverse-sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

		
		
		
		
		
		
		
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled-Explore.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled-Always.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled-Reference.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv

csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Fraction.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-Fraction.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always-Fraction.csv  \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Fraction.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-Fraction.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always-Fraction.csv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Reference.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv

csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv: generate-glb-pareto.py  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv  \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-transpose.csv:  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel.csv: generate-unified-pareto-fronts.py \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4.0.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4.1.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4.2.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4.3.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore-transpose.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv: generate-unified-pareto-fronts.py \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-explore-MRB.0.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-explore-MRB.1.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-explore-MRB.2.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-explore-MRB.3.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always-transpose.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv: generate-unified-pareto-fronts.py \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-always-MRB.0.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-always-MRB.1.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-always-MRB.2.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-always-MRB.3.tsv \
        hypervolume/sobel-parallel-transformer/runs/Sorting-Inverse-sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

		

		
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled-Explore.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled-Always.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled-Reference.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv

csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Fraction.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-Fraction.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always-Fraction.csv  \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Fraction.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-Fraction.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always-Fraction.csv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv
csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Reference.csv: csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv

csv/pareto-fronts/Global-TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv: generate-glb-pareto.py  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv  \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv \
        csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-transpose.csv:  csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance.csv: generate-unified-pareto-fronts.py \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance.0.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance.1.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance.2.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance.3.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore-transpose.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Explore.csv: generate-unified-pareto-fronts.py \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-explore-MRB.0.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-explore-MRB.1.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-explore-MRB.2.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-explore-MRB.3.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always-Fraction.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv
csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always-transpose.csv: csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv

csv/pareto-fronts/TokenModuloScheduling-BindingsDSE-Multicamera-1instance-Always.csv: generate-unified-pareto-fronts.py \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-always-MRB.0.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-always-MRB.1.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-always-MRB.2.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-always-MRB.3.tsv \
        hypervolume/multicamera-1instance-transformer/runs/Sorting-Inverse-multicamera-1instance-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

		
