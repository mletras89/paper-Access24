

csv/cores-utilization/ILPModuloScheduling-Sobel-Sequential-ALL.csv: merge-files.py \
	csv/cores-utilization/ILPModuloScheduling-Sobel-Sequential.csv \
	csv/cores-utilization/ILPModuloScheduling-Sobel-Sequential-Always.csv	\
	csv/cores-utilization/ILPModuloScheduling-Sobel-Sequential-Explore.csv	
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" "$${@}"

csv/cores-utilization/ILPModuloScheduling-Sobel-Sequential.csv: generate-utilization-data.py \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential.0.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential.1.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential.2.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential.3.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"


csv/cores-utilization/ILPModuloScheduling-Sobel-Sequential-Explore.csv: generate-utilization-data.py \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-explore-MRB.0.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-explore-MRB.1.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-explore-MRB.2.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-explore-MRB.3.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"


csv/cores-utilization/ILPModuloScheduling-Sobel-Sequential-Always.csv: generate-utilization-data.py \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-always-MRB.0.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-always-MRB.1.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-always-MRB.2.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-always-MRB.3.tsv \
	hypervolume/sobel-sequential/Utilization/ILP-sobel-sequential-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"


csv/cores-utilization/ILPModuloScheduling-Sobel-Parallel-ALL.csv: merge-files.py \
	csv/cores-utilization/ILPModuloScheduling-Sobel-Parallel.csv \
	csv/cores-utilization/ILPModuloScheduling-Sobel-Parallel-Always.csv	\
	csv/cores-utilization/ILPModuloScheduling-Sobel-Parallel-Explore.csv	
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" "$${@}"


csv/cores-utilization/ILPModuloScheduling-Sobel-Parallel.csv: generate-utilization-data.py \
 	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4.0.tsv \
 	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4.1.tsv \
 	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4.2.tsv \
 	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4.3.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4.4.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"


csv/cores-utilization/ILPModuloScheduling-Sobel-Parallel-Explore.csv: generate-utilization-data.py \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-explore-MRB.0.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-explore-MRB.1.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-explore-MRB.2.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-explore-MRB.3.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"


csv/cores-utilization/ILPModuloScheduling-Sobel-Parallel-Always.csv: generate-utilization-data.py \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-always-MRB.0.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-always-MRB.1.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-always-MRB.2.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-always-MRB.3.tsv \
	hypervolume/sobel-parallel/Utilization/ILP-sobel-parallel4-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"

		
csv/cores-utilization/ILPModuloScheduling-Multicamera-ALL.csv: merge-files.py \
	csv/cores-utilization/ILPModuloScheduling-Multicamera.csv \
	csv/cores-utilization/ILPModuloScheduling-Multicamera-Always.csv	\
	csv/cores-utilization/ILPModuloScheduling-Multicamera-Explore.csv	
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" "$${@}"

csv/cores-utilization/ILPModuloScheduling-Multicamera.csv: generate-utilization-data.py \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera.0.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera.1.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera.2.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera.3.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera.4.tsv 
		mkdir -p `dirname "$@"` 
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"


csv/cores-utilization/ILPModuloScheduling-Multicamera-Explore.csv: generate-utilization-data.py \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-explore-MRB.0.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-explore-MRB.1.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-explore-MRB.2.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-explore-MRB.3.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-explore-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500  "$${@}"


csv/cores-utilization/ILPModuloScheduling-Multicamera-Always.csv: generate-utilization-data.py \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-always-MRB.0.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-always-MRB.1.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-always-MRB.2.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-always-MRB.3.tsv \
	hypervolume/multicamera-1instance/Utilization/ILP-multicamera-always-MRB.4.tsv 
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --output "$@" --iteration  2500 "$${@}"




