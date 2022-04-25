
venv:
venv:  ## make virtual environment
	python3 -m venv venv

activate:
activate:
	echo .\venv\Scripts\Activate.ps1

onefolder:
onefolder:
	pyinstaller -y --clean --additional-hooks-dir extra-hooks main.py

onefile:
onefile:
	pyinstaller -y --clean --onefile --additional-hooks-dir extra-hooks main.py