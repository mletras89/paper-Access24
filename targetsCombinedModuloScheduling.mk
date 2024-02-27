csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Distilled-Explore.csv: csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Distilled.csv
csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Distilled-Always.csv: csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Distilled.csv
csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Distilled-Reference.csv: csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Distilled.csv

csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Fraction.csv  csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Explore-Fraction.csv csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Always-Fraction.csv \
	csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Fraction.csv		\
	csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Explore-Fraction.csv	\
	csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2800 "$${@}"


csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Explore.csv: csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera.csv
csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Always.csv: csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera.csv
csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera-Reference.csv: csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera.csv

csv/pareto-fronts/Global-CombinedScheduling-180Seconds-Multicamera.csv: generate-glb-pareto.py  csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera.csv  csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Explore.csv csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Always.csv \
	csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera.csv		\
	csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Explore.csv	\
	csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2800 "$${@}"

csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Fraction.csv: csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera.csv
csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-transpose.csv: csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera.csv

csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/180seconds/CombinedDSE-multicamera-1instance.0.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2800  --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Explore-Fraction.csv: csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Explore.csv

csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/180seconds/CombinedDSE-multicamera-1instance-explore-MRB.0.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2800 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Always-Fraction.csv: csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Always.csv

csv/pareto-fronts/CombinedScheduling-180Seconds-Multicamera-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/180seconds/CombinedDSE-multicamera-1instance-always-MRB.0.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2800 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"


		
		
csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Distilled-Explore.csv: csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Distilled.csv
csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Distilled-Always.csv: csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Distilled.csv
csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Distilled-Reference.csv: csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Distilled.csv

csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Fraction.csv  csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Explore-Fraction.csv csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Always-Fraction.csv \
	csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Fraction.csv		\
	csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Explore-Fraction.csv	\
	csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2800 "$${@}"


csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Explore.csv: csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera.csv
csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Always.csv: csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera.csv
csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera-Reference.csv: csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera.csv

csv/pareto-fronts/Global-CombinedScheduling-60Seconds-Multicamera.csv: generate-glb-pareto.py  csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera.csv  csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Explore.csv csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Always.csv \
	csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera.csv		\
	csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Explore.csv	\
	csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2800 "$${@}"

csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Fraction.csv: csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera.csv
csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-transpose.csv: csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera.csv

csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/60seconds/CombinedDSE-multicamera-1instance.0.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2800  --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Explore-Fraction.csv: csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Explore.csv

csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/60seconds/CombinedDSE-multicamera-1instance-explore-MRB.3.tsv \
	hypervolume/combined/60seconds/CombinedDSE-multicamera-1instance-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2950 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Always-Fraction.csv: csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Always.csv

csv/pareto-fronts/CombinedScheduling-60Seconds-Multicamera-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/60seconds/CombinedDSE-multicamera-1instance-always-MRB.2.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2950 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"


csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Distilled-Explore.csv: csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Distilled.csv
csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Distilled-Always.csv: csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Distilled.csv
csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Distilled-Reference.csv: csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Distilled.csv

csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Distilled.csv: generate-glb-pareto.py  csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Fraction.csv  csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Explore-Fraction.csv csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Always-Fraction.csv \
	csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Fraction.csv		\
	csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Explore-Fraction.csv	\
	csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Always-Fraction.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2800 "$${@}"


csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Explore.csv: csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera.csv
csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Always.csv: csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera.csv
csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera-Reference.csv: csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera.csv

csv/pareto-fronts/Global-CombinedScheduling-40Seconds-Multicamera.csv: generate-glb-pareto.py  csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera.csv  csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Explore.csv csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Always.csv \
	csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera.csv		\
	csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Explore.csv	\
	csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Always.csv
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  2800 "$${@}"

csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Fraction.csv: csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera.csv
csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-transpose.csv: csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera.csv

csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/40seconds/CombinedDSE-multicamera-1instance.0.tsv \
	hypervolume/combined/40seconds/CombinedDSE-multicamera-1instance.4.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iterations  2800  --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"

csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Explore-Fraction.csv: csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Explore.csv

csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Explore.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/40seconds/CombinedDSE-multicamera-1instance-explore-MRB.1.tsv \
	hypervolume/combined/40seconds/CombinedDSE-multicamera-1instance-explore-MRB.2.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations  3000 --throughputDivider 5 --memoryDivider 20 --percentage 1  "$${@}"

csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Always-Fraction.csv: csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Always.csv

csv/pareto-fronts/CombinedScheduling-40Seconds-Multicamera-Always.csv: generate-unified-pareto-fronts.py \
	hypervolume/combined/40seconds/CombinedDSE-multicamera-1instance-always-MRB.2.tsv \
	hypervolume/combined/40seconds/CombinedDSE-multicamera-1instance-always-MRB.3.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iterations 2800 --throughputDivider 5 --memoryDivider 20 --percentage 1 "$${@}"



		
		
		


