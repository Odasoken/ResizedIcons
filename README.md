## ResizedIcons
![image](https://github.com/abredo/ResizedIcons/blob/master/ResizeIcon.gif) 
===========
iOS 自动生成对应尺寸图标的脚本，只需要更改脚本里面的尺寸数组和对应的文件名数组，就可以生成对应大小的图标。
A Shell Script for generating resized icons for uploading iOS App to AppStore
*  Generating resized icons for uploading iOS App to AppStore, matches  the size like "Icon-20.png" "Icon-20@2x.png" "Icon-20@3x.png" "Icon-29.png" "Icon-29@2x.png" "Icon-29@3x.png" "Icon-40.png" "Icon-40@2x.png" "Icon-40@3x.png" "Icon-60@2x.png" "Icon-60@3x.png" "Icon-76.png" "Icon-76@2x.png" "Icon-83.5@2x.png"
* Getting Started 使用方法
    * stp1 Replace the "icon.png" with your icon that matches the size 1024 * 1024<br>把下载的文件夹中的icon.png，替换成你的图标，名字要是icon.png
     
    * stp2 Open your terminal in OS X, 'cd' into the folder that contains 'icon.png' and 'ics.sh'<br>在终端执行 cd 命令切换到icon.png所在目录
    * stp3 Use the shell command 'chmod +x' to make the 'ics.sh' executable and execute it.<br>给脚本添加权限， 'chmod +x ./ics.sh';然后在终端输入'./ics.sh'执行脚本就可以生成所有尺寸的图标。只有第一次使用会需要给脚本添加权限，后续执行脚本不需要再次添加权限，替换新的icon.png，再次执行脚本就可以生成新的对应尺寸图标。

## A glimpse of the shell script 脚本预览
```objc
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
```
## More
* For customized needs, change the contents of  'name_array' or  'size_array' in  ics.sh. And make sure the 'filename' consistent with      the name of your icon file.
