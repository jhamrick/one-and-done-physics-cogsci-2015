.PHONY: pdf figures results

ANALYSIS_PATH = ../../research/one-and-done-physics/analysis

pdf: figures results
	rm -f manuscript.pdf
	latexmk -bibtex -pdf manuscript.tex

figures:
	rm -f figures/*.pdf
	cp $(ANALYSIS_PATH)/figures/hole_empirical_results.pdf figures/
	cp $(ANALYSIS_PATH)/figures/model_results.pdf figures/

results:
	rm -f results/*.tex
	cp $(ANALYSIS_PATH)/latex_results/params.tex results/
	cp $(ANALYSIS_PATH)/latex_results/corrs.tex results/
	cp $(ANALYSIS_PATH)/latex_results/hole_empirical_analysis.tex results/
	cp $(ANALYSIS_PATH)/latex_results/num_participants.tex results/
