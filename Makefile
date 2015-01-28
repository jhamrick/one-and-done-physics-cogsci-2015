.PHONY: pdf figures

pdf: figures
	rm -f manuscript.pdf
	latexmk -bibtex -pdf manuscript.tex

figures:
	rm -f figures/*.pdf
	cp ../../research/one-and-done-physics/analysis/figures/hole_empirical_results.pdf figures/
	cp ../../research/one-and-done-physics/analysis/figures/model_results.pdf figures/

