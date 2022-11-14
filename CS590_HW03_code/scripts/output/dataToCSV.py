import os
import sys

mean_list = []
dataFolder = ""
print(os.path.realpath(__file__).split("\\")[-2])
for folder in os.scandir():
    if folder.is_dir():
        for folders in os.scandir(folder):
            if folders.is_dir():
                subName = "-" + folders.name
                print(folders.name)
                for file in os.scandir(folders):
                    print(file.name.split("-")[-4])
                    if file.is_file() and file.name.split(".")[-1] == "txt":
                        with open(
                            os.path.join(
                                sys.path[0],
                                dataFolder,
                                folder.name,
                                folders.name,
                                file.name,
                            ),
                            "r",
                        ) as f:
                            data = [float(line.rstrip()) for line in f]
                        lenData: float = len(data) if len(data) != 0 else 1
                        mean = round(sum(data) / (lenData))
                        mean_list.append(str(mean))
            print("\n".join(mean_list))
            mean_list = []
os.system("pause")
