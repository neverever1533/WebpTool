# WebpTool

GUI & bat file for libwebp.

## libwebp库：

libwebp官方链接：[google libwebp](https://developers.google.cn/speed/webp/docs/precompiled?hl=zh-cn)

## 说明（about）：

libwebp是Google官方开发的webp库，用于各种图片文件（png, jpg, gif etc.）与webp文件格式互转。

该库所有功能的使用，须调用各平台的命令行工具。

### 项目进度：
* GUI（待支持）
* 批处理
    * Windows（开发中）
    * Linux（待支持）
    * Mac（待支持）

## 工具（tool)：
* library:
    * anim_diff
    * anim_dump
    * cwebp
    * dwebp
    * get_disto
    * gif2webp
    * img2webp
    * vwebp
    * webp_quality
    * webpinfo
    * webpmux

## 用法（Usage）：

获取本项目bat文件（适用于Windows平台），放置于libwebp库（下载并解压到硬盘）的bin文件目录，即置于包含dwebp.exe等执行文件的文件夹内，使用相对应的功能时双击bat文件即可。

例：
* webp2png.bat（处理静态webp）：

编辑inWebpFiles.txt（初次双击运行bat文件自动生成），将待处理的静态webp文件路径复制进txt文件中（多个文件换行保存），然后双击webptool_webp2png.bat文件就能批处理静态webp，并将它们转换成png图片。

* webpinfo.bat（处理动态webp）：

编辑inWebpmuxFiles.txt（初次双击运行bat文件自动生成），将待处理的动态webp文件路径复制进txt文件中（多个文件换行保存），然后双击webptool_webpinfo.bat文件就能批查看静态webp所含frame信息，可手动将对应动态webp的frame数量存进inWebpmuxFrames.txt。

* webpmux2frame.bat（处理动态webp）：

编辑inWebpmuxFiles.txt（初次双击运行bat文件自动生成），将待处理的动态webp文件路径复制进txt文件中（多个文件换行保存），配合inwebpmuxFrames.txt的frame帧数，然后双击webptool_webpmux2frame.bat文件就能批处理动态webp，并将每一帧图转换成png图片，以便后续合成gif文件。

## 许可（License）：

------------------

License :
 [Apache License (Version 2.0)](http://www.apache.org/licenses/)

------------------