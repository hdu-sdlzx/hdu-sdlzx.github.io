# 常用图像格式

1、RGB
三个分量分别表示红Red、绿Green、蓝Blue三种颜色的强度。
这种表示方式与人眼的三种视锥细胞有关，适合颜色显示，显示屏一般有这三种颜色的发光单元。

2、YUV
YUV指一类色彩空间，它们的共同点是将亮度单独存储（人眼对亮度的差异更敏感）。
一般YUV指Y'CrCb，Y'表示亮度Luma，Cr与Cb表示色度Chroma。Y'符号中的'是因为Y一般用来表示发光强度，而亮度是指经过修正后的值（人眼对不同颜色的感受不是线性的）。
YUV与RGB的转换方法与显示标准有关：

```
Y  = a * R + b * G + c * B
Cb = (B - Y) / d
Cr = (R - Y) / e
```

| BT.601 | BT.709 | BT.2020 |
| --------: | -------: | --------: |
|    a    |  0.299 |  0.2126 | 0.2627 |
|    b    |  0.587 |  0.7152 | 0.6780 |
|    c    |  0.114 |  0.0722 | 0.0593 |
|    d    |  1.772 |  1.8556 | 1.8814 |
|    e    |  1.402 |  1.5748 | 1.4746 |

# YUV采样

对于单个像素点，YUV与RGB都是3*8=24bit的数据，但是由于人眼对色度的变化不敏感，可以减少UV的采样频率以减少整个图像的数据量。
采样频率一般用J\:a\:b的方式表示，例如最常用的4:2:0含义为：
J:横向采样数量即区域宽度，一般为4。
a:第一行的色度数量，2表示每4个像素有2个色度，即像素12共用色度数据，34共用色度数据。
b:第二行的色度数量，0表示不单独采样，即第二行的每个像素色度数据与第一行相同。

![image](https://wiki.huawei.com/vision-file-storage/api/file/download/upload-v2/WIKI20230210738416/9707104/image.png)

# YUV编码

与RGB分别存储每个像素不同，YUV是整个图像一起存储的，常用的YUV420_NV12存储方式如下：
1、存储Y，与像素点对应。
2、每组UV一起存储，对应方式与采样间隔相同，即第一组UV对应第一行与第二行的前两个Y。
![image](https://wiki.huawei.com/vision-file-storage/api/file/download/upload-v2/WIKI20230210738416/9707607/image.png)

# 参考资料

1. [关于YUV视频](https://learn.microsoft.com/zh-cn/windows/win32/medfound/about-yuv-video)
2. [推荐用于视频渲染的 8 位 YUV 格式](https://learn.microsoft.com/zh-cn/windows/win32/medfound/recommended-8-bit-yuv-formats-for-video-rendering)
3. [Chroma Subsampling](https://en.wikipedia.org/wiki/Chroma_subsampling)
4. [Plannar YUV formats](https://docs.kernel.org/userspace-api/media/v4l/pixfmt-yuv-planar.html)
