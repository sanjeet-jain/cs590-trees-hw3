import csv
import os
import sys

meanList = []
row_list = []
filename = os.path.realpath(__file__).split("\\")[-2]
dataFolder = ""
for folder in os.scandir():
    if folder.is_dir():
        print(folder)
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
                        meanList.append(file.name.split("-")[-4])
                        meanList.append(mean)
                        print(meanList)
                    converted_list = [int(element) for element in meanList]
                    row_list.append(converted_list)
                    meanList.clear()
                with open(
                    folder.path + "//" + filename + subName + ".csv", "w", newline=""
                ) as file:
                    fieldnames = ["input-size", "mean-runtime"]
                    writer = csv.DictWriter(file, fieldnames=fieldnames)
                    writer.writeheader()
                    writer = csv.writer(file)
                    writer.writerows(row_list)
