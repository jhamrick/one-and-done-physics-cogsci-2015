.PHONY: pdf figures results

pdf: figures results
	rm -f manuscript.pdf
	latexmk -bibtex -pdf manuscript.tex

figures:
	rm -f figures/*.pdf
	cp ../../research/one-and-done-physics/analysis/figures/hole_empirical_results.pdf figures/
	cp ../../research/one-and-done-physics/analysis/figures/model_results.pdf figures/

results:
	rm -f results/*.tex
	cp ../../research/one-and-done-physics/analysis/latex_results/params.tex results/
	cp ../../research/one-and-done-physics/analysis/latex_results/corrs.tex results/
	cp ../../research/one-and-done-physics/analysis/latex_results/hole_empirical_analysis.tex results/
