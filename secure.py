from subprocess import call
from pathlib import Path


def secure():
    for file in Path.home().iterdir():
        if file.is_dir():
            call(["chmod","700",file])
        if file.is_file():
            call(["chmod","600",file])


def main():
    secure()


if __name__ == "__main__":
    main()