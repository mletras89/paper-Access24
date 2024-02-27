

csv/gains/ILP-hypervolumes-last-generation.csv: generate-hypervolume-data.py \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential.stats \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential-always-MRB.stats \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential-explore-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4-always-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4-explore-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera-always-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera-explore-MRB.stats
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --hypervolume "$@" --iteration 2500 "$${@}"

csv/gains/ILP-gains-last-generation.csv: generate-gain-data.py \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential.stats \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential-always-MRB.stats \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential-explore-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4-always-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4-explore-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera-always-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera-explore-MRB.stats
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --gain "$@" --iteration 2500 "$${@}"

csv/gains/ILP-standard-deviation-last-generation.csv: generate-deviation-data.py \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential.stats \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential-always-MRB.stats \
	hypervolume/sobel-sequential-transformer/results/ILP-Transformer-sobel-sequential-explore-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4-always-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/ILP-Transformer-sobel-parallel4-explore-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera-always-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/ILP-Transformer-multicamera-explore-MRB.stats
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --deviation "$@" --iteration 2500 "$${@}"

csv/gains/Heuristic-hypervolumes-last-generation.csv: generate-hypervolume-data.py \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential.stats \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential-always-MRB.stats \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential-explore-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4-always-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4-explore-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance-always-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance-explore-MRB.stats
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --hypervolume "$@" --iteration 2500 "$${@}"

csv/gains/Heuristic-gains-last-generation.csv: generate-gain-data.py \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential.stats \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential-always-MRB.stats \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential-explore-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4-always-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4-explore-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance-always-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance-explore-MRB.stats
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --gain "$@" --iteration 2500 "$${@}"

csv/gains/Heuristic-standard-deviation-last-generation.csv: generate-deviation-data.py \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential.stats \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential-always-MRB.stats \
	hypervolume/sobel-sequential-transformer/results/Sorting-Inverse-sobel-sequential-explore-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4-always-MRB.stats \
	hypervolume/sobel-parallel-transformer/results/Sorting-Inverse-sobel-parallel4-explore-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance-always-MRB.stats \
	hypervolume/multicamera-1instance-transformer/results/Sorting-Inverse-multicamera-1instance-explore-MRB.stats
		mkdir -p `dirname "$@"`
		set -- $^; shift; ./$< --deviation "$@" --iteration 2500 "$${@}"









