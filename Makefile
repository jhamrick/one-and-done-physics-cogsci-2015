.PHONY: pdf figures

pdf: figures
	rm -f manuscript.pdf
	latexmk -bibtex -pdf manuscript.tex

figures:
	cp ../../research/one-and-done-physics/analysis/figures/hole_empirical_results.pdf figures/
	cp ../../research/one-and-done-physics/analysis/figures/paddle_responses.pdf figures/

