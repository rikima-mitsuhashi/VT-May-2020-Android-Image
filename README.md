# The Drebin-20-IMG dataset

* To enable malware researchers to compare different classification approaches, we disclose how to create our dataset.

* This dataset contains 4,663 malware images from 20 different malware families. The original malware binary programs are included in the Drebin dataset. 

* When your papers use the dataset or script-tools for the dataset, please cite the following paper.

* R. Mitsuhashi and T. Shinagawa, <br>
"Exploring Optimal Deep Learning Models for Image-based Malware Variant Classification,"<br>
*2022 IEEE 46rd Annual Computer Software and Applications Conference (COMPSAC), 2022.*

# How to create the dataset
### 1. Apply for downloading the Drebin dataset

* https://www.sec.cs.tu-bs.de/~danarp/drebin/

### 2. Download the Drebin dataset 

* https://www.sec.cs.tu-bs.de/~danarp/drebin/download.html <br>
-> drebin-0.zip, drebin-1.zip, drebin-2.zip, drebin-3.zip drebin-4.zip,and drebin-5.zip

### 3. Unzip malware files
* See the reply mail.
* Note that these are real malware.

### 4. Make directory and copy malware files
* The following steps are confirmed in Ubuntu 20.04 LTS.
```
./00_make_directory.sh
```
* Copy your unzipped malware files to "drebin" directory.
```
find /media/user/usb/drebin-012345 -type f | xargs -i cp {} ./drebin
```


* Check the file type. 
```
file ./drebin/fff29f78324c75c8727426d77b128d3ee9df7ba6a1f0be1617be3430ed99d050
```
  -> Java archive data (JAR)

### 5. Create the dataset
```
sudo apt-get install pnmtopng
```
```
./01_binary_copy.sh
```
```
./02_get_dex.sh
```
```
./03_malwareimage.sh
```
```
./04_image_copy.sh
```


### 6. Check the results
```
tar zcvf dataset.tar.gz ./dataset
```
```
sha256sum ./dataset.tar.gz
```
-> 3c619b492a1e9ad59547d8b17d5448c791cee1372771ea4198cc58b0a0037fa4
```
cd ./dataset
```

* 01/0f9b5da88755de1b5e9cb4894c5c0b15401cc11f8e38c9429c00e30a4ae832cf.dex.png
<img src="./sample01.png" width=10%>

* 02/1fca504cef5b106951ffd3456a9c5a8a80354d8eb942aad464ed40d7d1b7e4e8.dex.png
<img src="./sample02.png" width=10%>
