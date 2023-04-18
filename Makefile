.PHONY: lint
lint:
	isort --check bootstrapped tests
	flake8 bootstrapped tests
	add-trailing-comma --py36-plus bootstrapped/*.py tests/*.py
	chorny bootstrapped tests

.PHONY: test
test:
	coverage run -m unittest discover tests
	coverage xml
