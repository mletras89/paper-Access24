csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Fraction.csv csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore-Fraction.csv csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"



csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential.csv

csv/pareto-fronts/Global-ModuloScheduling-Sobel-Sequential.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Sobel-Sequential.csv csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore.csv csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-Sobel-Sequential.csv \
	csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Sequential.csv
csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-transpose.csv:  csv/pareto-fronts/ModuloScheduling-Sobel-Sequential.csv

csv/pareto-fronts/ModuloScheduling-Sobel-Sequential.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/sobel-sequential.0.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential.1.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential.2.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential.3.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore.csv
csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore.csv

csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/sobel-sequential-explore-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-explore-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-explore-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-explore-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always.csv
csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always.csv

csv/pareto-fronts/ModuloScheduling-Sobel-Sequential-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-sequential/runs/sobel-sequential-always-MRB.0.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-always-MRB.1.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-always-MRB.2.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-always-MRB.3.tsv \
	hypervolume/sobel-sequential/runs/sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Fraction.csv  csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore-Fraction.csv csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Fraction.csv		\
	csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore-Fraction.csv	\
	csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel.csv

csv/pareto-fronts/Global-ModuloScheduling-Sobel-Parallel.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Sobel-Parallel.csv  csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore.csv csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always.csv \
	csv/pareto-fronts/ModuloScheduling-Sobel-Parallel.csv		\
	csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore.csv	\
	csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 "$${@}"

csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Parallel.csv
csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-transpose.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Parallel.csv

csv/pareto-fronts/ModuloScheduling-Sobel-Parallel.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/sobel-parallel4.0.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4.1.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4.2.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4.3.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500  --throughputDivider 5 --memoryDivider 20  --percentage 1 "$${@}"

csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore.csv
csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore.csv

csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/sobel-parallel4-explore-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-explore-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-explore-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-explore-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20  --percentage 1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always.csv
csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always.csv

csv/pareto-fronts/ModuloScheduling-Sobel-Parallel-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/sobel-parallel/runs/sobel-parallel4-always-MRB.0.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-always-MRB.1.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-always-MRB.2.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-always-MRB.3.tsv \
	hypervolume/sobel-parallel/runs/sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2500 --throughputDivider 5 --memoryDivider 20  --percentage 1 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Distilled-Reference.csv:  csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Distilled.csv 

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Fraction.csv csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always-Fraction.csv csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance.csv

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-1instance.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Multicamera-1instance.csv csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always.csv csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-Multicamera-1instance.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-1instance.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-1instance.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-1instance.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/multicamera-1instance.0.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance.1.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance.2.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance.3.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 10  --percentage 1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-always-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-always-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-always-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-always-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 10  --percentage 1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-1instance-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-explore-MRB.0.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-explore-MRB.1.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-explore-MRB.2.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-explore-MRB.3.tsv \
	hypervolume/multicamera-1instance/runs/multicamera-1instance-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 --throughputDivider 5 --memoryDivider 10 --percentage 1  "$${@}"




csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Video-Object-Fraction.csv csv/pareto-fronts/ModuloScheduling-Video-Object-Always-Fraction.csv csv/pareto-fronts/ModuloScheduling-Video-Object-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Video-Object-Fraction.csv   \
	csv/pareto-fronts/ModuloScheduling-Video-Object-Always-Fraction.csv   \
	csv/pareto-fronts/ModuloScheduling-Video-Object-Explore-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Distilled-Explore.csv:csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Distilled-Always.csv:csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Distilled.csv


csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Video-Object.csv
csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Video-Object.csv
csv/pareto-fronts/Global-ModuloScheduling-Video-Object-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Video-Object.csv

csv/pareto-fronts/Global-ModuloScheduling-Video-Object.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Video-Object.csv csv/pareto-fronts/ModuloScheduling-Video-Object-Always.csv csv/pareto-fronts/ModuloScheduling-Video-Object-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-Video-Object.csv   \
	csv/pareto-fronts/ModuloScheduling-Video-Object-Always.csv   \
	csv/pareto-fronts/ModuloScheduling-Video-Object-Explore.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"

csv/pareto-fronts/ModuloScheduling-Video-Object-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Video-Object.csv
csv/pareto-fronts/ModuloScheduling-Video-Object-transpose.csv: csv/pareto-fronts/ModuloScheduling-Video-Object.csv

csv/pareto-fronts/ModuloScheduling-Video-Object.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.0.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.1.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.2.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.3.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.4.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.5.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.6.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.7.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.8.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 8 --memoryDivider 10 --distill --percentage 0.1 "$${@}"

csv/pareto-fronts/ModuloScheduling-Video-Object-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Video-Object-Always.csv
csv/pareto-fronts/ModuloScheduling-Video-Object-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Video-Object-Always.csv

csv/pareto-fronts/ModuloScheduling-Video-Object-Always.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.0.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.1.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.2.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.3.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.4.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.5.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.6.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.7.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.8.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-always-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 8 --memoryDivider 10 --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Video-Object-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Video-Object-Explore.csv
csv/pareto-fronts/ModuloScheduling-Video-Object-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Video-Object-Explore.csv

csv/pareto-fronts/ModuloScheduling-Video-Object-Explore.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.0.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.1.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.2.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.3.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.4.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.5.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.6.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.7.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.8.tsv \
	edominance/architecture-4tiles/video-3instances/runs/video-object-counting-3instances-explore-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 8 --memoryDivider 10 --distill --percentage 0.1  "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Foreground-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-Foreground-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Foreground-Fraction.csv csv/pareto-fronts/ModuloScheduling-Foreground-Always-Fraction.csv csv/pareto-fronts/ModuloScheduling-Foreground-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Foreground-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-Explore-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"

csv/pareto-fronts/Global-ModuloScheduling-Foreground-Explore.csv:csv/pareto-fronts/Global-ModuloScheduling-Foreground.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground.csv

csv/pareto-fronts/Global-ModuloScheduling-Foreground.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Foreground.csv csv/pareto-fronts/ModuloScheduling-Foreground-Always.csv csv/pareto-fronts/ModuloScheduling-Foreground-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-Foreground.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-Explore.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"


csv/pareto-fronts/ModuloScheduling-Foreground-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Foreground.csv
csv/pareto-fronts/ModuloScheduling-Foreground-transpose.csv: csv/pareto-fronts/ModuloScheduling-Foreground.csv

csv/pareto-fronts/ModuloScheduling-Foreground.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/foreground/runs/foreground.0.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.1.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.2.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.3.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.4.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.5.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.6.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.7.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.8.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 0.1 --memoryDivider 200 --distill --percentage 0.1 "$${@}"

csv/pareto-fronts/ModuloScheduling-Foreground-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Foreground-Always.csv
csv/pareto-fronts/ModuloScheduling-Foreground-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Foreground-Always.csv

csv/pareto-fronts/ModuloScheduling-Foreground-Always.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.0.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.1.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.2.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.3.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.4.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.5.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.6.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.7.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.8.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-always-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 0.1 --memoryDivider 200  --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Foreground-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Foreground-Explore.csv
csv/pareto-fronts/ModuloScheduling-Foreground-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Foreground-Explore.csv

csv/pareto-fronts/ModuloScheduling-Foreground-Explore.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.0.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.1.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.2.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.3.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.4.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.5.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.6.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.7.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.8.tsv \
	edominance/architecture-4tiles/foreground/runs/foreground-explore-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 0.1 --memoryDivider 200  --distill --percentage 0.1  "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Fraction.csv csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always-Fraction.csv csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"

csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances.csv
csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances.csv

csv/pareto-fronts/Global-ModuloScheduling-Foreground-4instances.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Foreground-4instances.csv csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always.csv csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-Foreground-4instances.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"

csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Foreground-4instances.csv
csv/pareto-fronts/ModuloScheduling-Foreground-4instances-transpose.csv: csv/pareto-fronts/ModuloScheduling-Foreground-4instances.csv
csv/pareto-fronts/ModuloScheduling-Foreground-4instances.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.0.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.1.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.2.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.3.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.4.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.5.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.6.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.7.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.8.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 0.2 --memoryDivider 200 --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always.csv
csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always.csv
csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Always.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.0.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.1.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.2.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.3.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.4.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.5.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.6.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.7.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.8.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-always-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 0.2 --memoryDivider 200 --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore.csv
csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore.csv
csv/pareto-fronts/ModuloScheduling-Foreground-4instances-Explore.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.0.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.1.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.2.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.3.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.4.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.5.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.6.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.7.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.8.tsv \
	edominance/architecture-4tiles/foreground-4instances/runs/foreground-4instances-explore-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 0.2 --memoryDivider 200 --distill --percentage 0.1   "$${@}"

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Distilled.csv: generate-glb-pareto.py csv/pareto-fronts/ModuloScheduling-Multicamera-Fraction.csv csv/pareto-fronts/ModuloScheduling-Multicamera-Always-Fraction.csv csv/pareto-fronts/ModuloScheduling-Multicamera-Explore-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-Explore-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"


csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera.csv

csv/pareto-fronts/Global-ModuloScheduling-Multicamera.csv: generate-glb-pareto.py csv/pareto-fronts/ModuloScheduling-Multicamera.csv csv/pareto-fronts/ModuloScheduling-Multicamera-Always.csv csv/pareto-fronts/ModuloScheduling-Multicamera-Explore.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-Explore.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"


csv/pareto-fronts/ModuloScheduling-Multicamera-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera.csv
csv/pareto-fronts/ModuloScheduling-Multicamera.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/multicamera/runs/multicamera.0.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.1.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.2.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.3.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.4.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.5.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.6.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.7.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.8.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 2 --memoryDivider 20  --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Multicamera-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-Always.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-Always.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-Always.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.0.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.1.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.2.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.3.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.4.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.5.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.6.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.7.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.8.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-always-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 2 --memoryDivider 20 --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Multicamera-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-Explore.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-Explore.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-Explore.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.0.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.1.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.2.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.3.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.4.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.5.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.6.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.7.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.8.tsv \
	edominance/architecture-4tiles/multicamera/runs/multicamera-explore-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 2 --memoryDivider 20  --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Distilled-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Distilled-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Distilled.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Distilled-Reference.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Distilled.csv

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Fraction.csv csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always-Fraction.csv csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore-Fraction.csv \
	csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always-Fraction.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Explore.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Reference.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Always.csv: csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Reference.csv
csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances-Reference.csv:  csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances.csv

csv/pareto-fronts/Global-ModuloScheduling-Multicamera-3instances.csv: generate-glb-pareto.py  csv/pareto-fronts/ModuloScheduling-Multicamera-3instances.csv csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always.csv csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore.csv \
	csv/pareto-fronts/ModuloScheduling-Multicamera-3instances.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always.csv  \
	csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 "$${@}"

csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-3instances.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-3instances.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-3instances.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances.0.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances.1.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances.2.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances.5.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances.7.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances.8.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 1 --memoryDivider 30 --distill --percentage 0.1  "$${@}"


csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always-transpose.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always.csv 
csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Always.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-always-MRB.0.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-always-MRB.1.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-always-MRB.2.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-always-MRB.5.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-always-MRB.7.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-always-MRB.8.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-always-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 1 --memoryDivider 30 --distill --percentage 0.1  "$${@}"

csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore-transpose.csv:  csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore.csv
csv/pareto-fronts/ModuloScheduling-Multicamera-3instances-Explore.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-explore-MRB.0.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-explore-MRB.1.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-explore-MRB.2.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-explore-MRB.5.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-explore-MRB.7.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-explore-MRB.8.tsv \
	edominance/architecture-4tiles/multicamera-3instances/runs/multicamera-3instances-explore-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 1 --memoryDivider 30 --distill --percentage 0.1  "$${@}"


csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances.csv
csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-transpose.csv: csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances.csv
csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.0.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.1.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.2.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.3.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.4.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.5.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.6.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.7.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.8.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500  "$${@}"

csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Explore-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Explore.csv
csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Explore-transpose.csv: csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Explore.csv
csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Explore.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.0.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.1.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.2.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.3.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.4.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.5.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.6.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.7.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.8.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-explore-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"

csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Always-Fraction.csv: csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Always.csv
csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Always-transpose.csv:  csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Always.csv
csv/pareto-fronts/ModuloScheduling-Optical-Flow-2instances-Always.csv: generate-unified-pareto-fronts.py \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.0.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.1.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.2.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.3.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.4.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.5.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.6.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.7.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.8.tsv \
	edominance/architecture-4tiles/optical-flow-2instances/runs/optical-flow-2instances-always-MRB.9.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2500 "$${@}"
