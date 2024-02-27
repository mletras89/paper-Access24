csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Distilled-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Distilled.csv

csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always-Fraction.csv  \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"



csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv

csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always.csv  \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv
csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-transpose.csv:  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential.0.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential.1.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential.2.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential.3.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore.csv
csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-explore-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-explore-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-explore-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-explore-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always.csv
csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Sequential-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-always-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-always-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-always-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-always-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/ILP-Binding-sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"


csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Distilled-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Distilled.csv

csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Fraction.csv  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Fraction.csv		\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore-Fraction.csv	\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv

csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv		\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore.csv	\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv
csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel.csv: generate-unified-pareto-fronts.py \
 	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4.0.tsv \
 	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4.1.tsv \
 	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4.2.tsv \
 	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4.3.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500  --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore.csv
csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-explore-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-explore-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-explore-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-explore-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always.csv
csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Sobel-Parallel-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-always-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-always-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-always-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-always-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/ILP-Binding-sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Distilled-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Distilled.csv

csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Fraction.csv  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Always-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Fraction.csv		\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore-Fraction.csv	\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera.csv
csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera.csv

csv/pareto-fronts/Global-ILPModuloScheduling-BindingsHeuristic-Multicamera.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera.csv  csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore.csv csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Always.csv \
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera.csv		\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore.csv	\
	csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera.csv
csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance.0.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance.1.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance.2.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance.3.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance.4.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500  --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-explore-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-explore-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-explore-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-explore-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Always-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Always.csv

csv/pareto-fronts/ILPModuloScheduling-BindingsHeuristic-Multicamera-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-always-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-always-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-always-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-always-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/ILP-Binding-multicamera-1instance-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"




