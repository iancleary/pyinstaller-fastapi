.PHONY: help

help_padding=12

help:
# http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
# adds anything that has a double # comment to the phony help list
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".:*?## "}; {printf "\033[36m%-$(help_padding)s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help

venv:
venv:  ## make virtual environment (activate with  `source venv/Scripts/activate` on Windows, deactivate with `deactivate`)
	python3 -m venv venv

onefolder:
onefolder:  ## make pyinstaller exe within folder of dependencies
	pyinstaller -y --clean --additional-hooks-dir extra-hooks main.py

onefile:
onefile:  ## make pyinstaller exe bundling dependencies into one file
	pyinstaller -y --clean --onefile --additional-hooks-dir extra-hooks main.py