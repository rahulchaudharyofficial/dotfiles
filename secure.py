import os
import subprocess
from pathlib import Path


def main():
    home = Path.home()
    for file in os.listdir(home):
        if os.path.isdir(file):
            subprocess.call(["chmod","700",f"{home}{os.sep}{file}"])
        if os.path.isfile(file):
            subprocess.call(["chmod","600",f"{home}{os.sep}{file}"])


if __name__ == "__main__":
    main()