test:
	pytest -v

install_dev:
	pip install --editable ".[tests]"

test_with_coverage:
	coverage run -m pytest -vv -s --cov=jinja2cli tests/

publish: clean
	python setup.py sdist bdist_wheel
	twine upload -s dist/*

clean:
	rm -rf *.egg-info *.egg dist build .pytest_cache

.PHONY: test publish clean
