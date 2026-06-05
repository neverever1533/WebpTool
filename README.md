# WebpTool

GUI & bat file for libwebp.

## libwebp库：

libwebp官方下载链接：[google libwebp](https://developers.google.cn/speed/webp/docs/precompiled?hl=zh-cn)

## 说明（about）：

libwebp是谷歌开发的webp库，用于各种图片文件（png, jpg, gif etc.）与webp文件格式互转。

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

## 脚本（Batchfile）
* for webp:
    * webptool_webp2png.bat
    * webptool_webp2png_remove.bat
* for webp (animate):
    * webptool_webpinfo.bat
    * webptool_webpinfo_line.bat
    * webptool_webpinfo_log.bat
    * webptool_webpmux_list.bat
    * webptool_webpmux2frames.bat

## 用法（Usage）：

获取本项目bat文件（适用于Windows平台），放置于libwebp库（下载并解压到硬盘）的bin文件目录，即置于包含dwebp.exe等执行文件的文件夹内，使用相对应的功能时双击bat文件即可。

注意：
### 处理图片：
webptool_webp2png.bat和webptool_webp2png_remove.bat可处理inWebpFiles.txt内的静态*.webp文件。

webptool_webpmux2frames.bat可处理inWebpmuxFiles.txt内的动态*.webp文件（默认同时调用webptool_webpinfo.bat，webptool_webpmux_list.bat和webptool_webp2png_remove.bat）。

### 其它：
webptool_webpinfo.bat，webptool_webpinfo_line.bat和webptool_webpinfo_log.bat可查看inWebpmuxFiles.txt内的动态*.webp文件的信息。

webptool_webpmux_list.bat可处理inWebpmuxFiles.txt内的动态*.webp文件，并将它们的filepath文件路径，frame数量和duration间隔存信息储进inWebpmuxFrames.txt内。

inWebpFiles.txt存储静态*.webp文件路径。
inWebpmuxFiles.txt存储动态*.webp文件路径。
inWebpmuxFrames.txt存储动态*.webp文件的文件路径，frame数量和duration间隔（以,隔开）。

以上*.txt手动创建或编辑时，均续留置最后一行为空行（line行数打出来方便观看，实际上不包含在txt文件内）。

行数 filepath
```txt
1 d:\1.webp
2 d:\2.webp
3
```

#### 例（inWebpFiles.txt）：

filepath
```txt
d:\1.webp
d:\2.webp
d:\3.webp

```

#### 例（inWebpmuxFiles.txt）：

```txt
d:\1.webp
d:\2.webp

```

#### 例（inWebpFrames.txt）：

filepath frames duration
```txt
d:\1.webp,5,100
d:\2.webp,10,50

```

### 介绍：
#### webptool_webp2png.bat:

处理inWebpFiles.txt（初次双击运行bat文件自动生成），将待处理的静态*.webp文件转换成*.webp.png。

#### webp2png_remove.bat:

用法同上，转换完图片后，会删除原始的*.webp文件。

#### webptool_webpinfo.bat:

处理inWebpmuxFiles.txt（初次双击运行bat文件自动生成），将待处理的动态*.webp文件的信息存储为*.webp.txt（原始*.webp文件所在文件夹内）。

#### webptool_webpinfo_line.bat:

处理inWebpmuxFiles.txt（初次双击运行bat文件自动生成），将待处理的动态*.webp文件的信息，打印在cmd命令窗口，可挑选里的行数（skip=0默认选择打印第一行）。

#### webptool_webpinfo_log.bat:

处理inWebpmuxFiles.txt（初次双击运行bat文件自动生成），将待处理的动态*.webp文件的信息存储为inWebpinfo_log.txt（bin文件夹内）。

#### webptool_webpmux_list.bat

处理inWebpmuxFiles.txt（初次双击运行bat文件自动生成），将待处理的动态*.webp文件的filepath路径，frame数量和duration间隔，存进inWebpmuxFrames.txt（bin文件夹内，默认删除因webptool_webpinfo.bat生成的*.webp.txt信息文件）。

#### webptool_webpmux2frame.bat:

处理inWebpmuxFiles.txt（初次双击运行bat文件自动生成），将待处理的动态*.webp文件的所有动画图帧存储为*.webp_0.webp.png，*.webp_1.webp.png等等。

## 许可（License）：

------------------

License :
 [Apache License (Version 2.0)](http://www.apache.org/licenses/)

------------------