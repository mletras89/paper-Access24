csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Distilled-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Distilled.csv

csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always-Fraction.csv  \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"



csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential.csv

csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Sequential.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential.csv csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore.csv csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always.csv  \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential.csv \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore.csv \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-transpose.csv:  csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential.csv

csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential.0.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential.1.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential.2.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential.3.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore.csv
csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore.csv

csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-explore-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-explore-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-explore-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-explore-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always.csv
csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always.csv

csv/pareto-fronts/ILPModuloScheduling-Sobel-Sequential-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-always-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-always-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-always-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-always-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/ILP-sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"


csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Distilled-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Distilled.csv

csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Fraction.csv  csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Fraction.csv		\
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore-Fraction.csv	\
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel.csv

csv/pareto-fronts/Global-ILPModuloScheduling-Sobel-Parallel.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel.csv  csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore.csv csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always.csv \
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel.csv		\
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore.csv	\
	csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel.csv

csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel.csv: generate-unified-pareto-fronts.py \
 	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4.0.tsv \
 	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4.1.tsv \
 	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4.2.tsv \
 	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4.3.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500  --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore.csv
csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore.csv

csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-explore-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-explore-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-explore-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-explore-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always.csv
csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always.csv

csv/pareto-fronts/ILPModuloScheduling-Sobel-Parallel-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-always-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-always-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-always-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-always-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/ILP-sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Distilled-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Distilled.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Distilled.csv

csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-Multicamera-Fraction.csv  csv/pareto-fronts/ILPModuloScheduling-Multicamera-Explore-Fraction.csv csv/pareto-fronts/ILPModuloScheduling-Multicamera-Always-Fraction.csv \
	csv/pareto-fronts/ILPModuloScheduling-Multicamera-Fraction.csv		\
	csv/pareto-fronts/ILPModuloScheduling-Multicamera-Explore-Fraction.csv	\
	csv/pareto-fronts/ILPModuloScheduling-Multicamera-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Explore.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Always.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera.csv
csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera-Reference.csv: csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera.csv

csv/pareto-fronts/Global-ILPModuloScheduling-Multicamera.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPModuloScheduling-Multicamera.csv  csv/pareto-fronts/ILPModuloScheduling-Multicamera-Explore.csv csv/pareto-fronts/ILPModuloScheduling-Multicamera-Always.csv \
	csv/pareto-fronts/ILPModuloScheduling-Multicamera.csv		\
	csv/pareto-fronts/ILPModuloScheduling-Multicamera-Explore.csv	\
	csv/pareto-fronts/ILPModuloScheduling-Multicamera-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Multicamera-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Multicamera.csv
csv/pareto-fronts/ILPModuloScheduling-Multicamera-transpose.csv: csv/pareto-fronts/ILPModuloScheduling-Multicamera.csv

csv/pareto-fronts/ILPModuloScheduling-Multicamera.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/ILP-multicamera.0.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera.1.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera.2.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera.3.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera.4.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2500  --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Multicamera-Explore-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Multicamera-Explore.csv

csv/pareto-fronts/ILPModuloScheduling-Multicamera-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-explore-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-explore-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-explore-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-explore-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

csv/pareto-fronts/ILPModuloScheduling-Multicamera-Always-Fraction.csv: csv/pareto-fronts/ILPModuloScheduling-Multicamera-Always.csv

csv/pareto-fronts/ILPModuloScheduling-Multicamera-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-always-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-always-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-always-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-always-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/ILP-multicamera-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"



		
		
		
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Distilled-Always.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Distilled.csv

csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Fraction.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore-Fraction.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always-Fraction.csv  \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Fraction.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore-Fraction.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"



csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Explore.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Always.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential-Reference.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential.csv

csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Sequential.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always.csv  \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-transpose.csv:  csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential.0.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential.1.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential.2.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential.3.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore-transpose.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-explore-MRB.0.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-explore-MRB.1.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-explore-MRB.2.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-explore-MRB.3.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always-transpose.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Sequential-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-always-MRB.0.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-always-MRB.1.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-always-MRB.2.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-always-MRB.3.tsv \
	hypervolume/sobel-sequential-transformer/runs/ILP-Transformer-sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"


		
		
		
		
		
		
		
		
		
		
		
		
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Distilled-Always.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Distilled.csv

csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Fraction.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore-Fraction.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always-Fraction.csv  \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Fraction.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore-Fraction.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"



csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Explore.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Always.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel-Reference.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel.csv

csv/pareto-fronts/Global-ILPTokenModuloScheduling-Sobel-Parallel.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore.csv csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always.csv  \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-transpose.csv:  csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4.0.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4.1.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4.2.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4.3.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore-transpose.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-explore-MRB.0.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-explore-MRB.1.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-explore-MRB.2.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-explore-MRB.3.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always-transpose.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Sobel-Parallel-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-always-MRB.0.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-always-MRB.1.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-always-MRB.2.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-always-MRB.3.tsv \
	hypervolume/sobel-parallel-transformer/runs/ILP-Transformer-sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

		
		
		
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Distilled-Explore.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Distilled-Always.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Distilled-Reference.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Distilled.csv

csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Fraction.csv csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore-Fraction.csv csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always-Fraction.csv  \
	csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Fraction.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore-Fraction.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"



csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Explore.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Always.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance.csv
csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance-Reference.csv: csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance.csv

csv/pareto-fronts/Global-ILPTokenModuloScheduling-Multicamera-1instance.csv: generate-glb-pareto.py  csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance.csv csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore.csv csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always.csv  \
	csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore.csv \
	csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-transpose.csv:  csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera.0.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera.1.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera.2.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera.3.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore-transpose.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-explore-MRB.0.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-explore-MRB.1.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-explore-MRB.2.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-explore-MRB.3.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always-Fraction.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always.csv
csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always-transpose.csv: csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always.csv

csv/pareto-fronts/ILPTokenModuloScheduling-Multicamera-1instance-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-always-MRB.0.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-always-MRB.1.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-always-MRB.2.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-always-MRB.3.tsv \
	hypervolume/multicamera-1instance-transformer/runs/ILP-Transformer-multicamera-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"
