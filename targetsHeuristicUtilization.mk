
csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Sequential-ALL.csv: merge-files.py \
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Sequential.csv \
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv\
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv	
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" "$${@}"
		
csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Sequential.csv: generate-utilization-data.py \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential.0.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential.1.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential.2.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential.3.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"

csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Sequential-Explore.csv: generate-utilization-data.py \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-explore-MRB.0.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-explore-MRB.1.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-explore-MRB.2.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-explore-MRB.3.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"


csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Sequential-Always.csv: generate-utilization-data.py \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-always-MRB.0.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-always-MRB.1.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-always-MRB.2.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-always-MRB.3.tsv \
	hypervolume/sobel-sequential/Utilization/BindingsDSE-sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"


csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Parallel-ALL.csv: merge-files.py \
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Parallel.csv \
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv\
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv	
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" "$${@}"
		

csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Parallel.csv: generate-utilization-data.py \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4.0.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4.1.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4.2.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4.3.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"

csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Parallel-Explore.csv: generate-utilization-data.py \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-explore-MRB.0.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-explore-MRB.1.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-explore-MRB.2.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-explore-MRB.3.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"

csv/cores-utilization/ModuloScheduling-BindingsDSE-Sobel-Parallel-Always.csv: generate-utilization-data.py \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-always-MRB.0.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-always-MRB.1.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-always-MRB.2.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-always-MRB.3.tsv \
	hypervolume/sobel-parallel/Utilization/BindingsDSE-sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"


csv/cores-utilization/ModuloScheduling-BindingsDSE-Multicamera-ALL.csv: merge-files.py \
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Multicamera.csv \
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Multicamera-Always.csv\
	csv/cores-utilization/ModuloScheduling-BindingsDSE-Multicamera-Explore.csv	
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" "$${@}"


csv/cores-utilization/ModuloScheduling-BindingsDSE-Multicamera.csv: generate-utilization-data.py \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance.0.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance.1.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance.2.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance.3.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"

csv/cores-utilization/ModuloScheduling-BindingsDSE-Multicamera-Always.csv: generate-utilization-data.py \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-always-MRB.0.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-always-MRB.1.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-always-MRB.2.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-always-MRB.3.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"

csv/cores-utilization/ModuloScheduling-BindingsDSE-Multicamera-Explore.csv: generate-utilization-data.py \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-explore-MRB.0.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-explore-MRB.1.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-explore-MRB.2.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-explore-MRB.3.tsv \
	hypervolume/multicamera-1instance/Utilization/BindingsDSE-multicamera-1instance-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"


