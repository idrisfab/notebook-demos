.PHONY: dev fmt

dev:
	@python -m venv .venv
	@.venv/bin/pip install --upgrade pip
	@.venv/bin/pip install -r requirements.txt

fmt:
	@.venv/bin/black .
	@.venv/bin/isort .
