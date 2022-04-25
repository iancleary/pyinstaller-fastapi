# extra-hooks/hooks-uvicorn.py
from PyInstaller.utils.hooks import collect_submodules

hiddenimports = collect_submodules('uvicorn')