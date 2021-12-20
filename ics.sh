#!/bin/sh

filename="icon.png"
current_time=`date +%Y-%m-%d_%H:%M:%S`
dirname=ResizedIcons_${current_time}
name_array=("Icon-20.png" "Icon-20@2x.png" "Icon-20@2x-1.png" "Icon-20@3x.png" "Icon-29.png" "Icon-29@2x.png" "Icon-29@2x-1.png" "Icon-29@3x.png" "Icon-40.png" "Icon-40@2x.png" "Icon-40@2x-1.png" "Icon-40@3x.png" "Icon-60@2x.png" "Icon-60@3x.png" "Icon-76.png" "Icon-76@2x.png" "Icon-83.5@2x.png" "Icon-1024.png")
size_array=("20" "40" "40" "60" "29" "58" "58" "87" "40" "80" "80" "120" "120" "180" "76" "152" "167" "1024")
echo "******************⛵️Launch Task🌲🎄🪐🌈**************"
mkdir $dirname

for ((i=0;i<${#name_array[@]};++i)); do
    file_path=$dirname/${name_array[i]}
    cp $filename $file_path
    sips -Z ${size_array[i]} $file_path
done
jsonFile="Contents.json"
jsonDestPath=$dirname/$jsonFile
cp $jsonFile $jsonDestPath
echo "******************🌻🌞✅Task finished!🌟🌟🌟🌟🌟**************"
