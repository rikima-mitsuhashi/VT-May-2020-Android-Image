# The VirusTotal-May-2020-Android-IMG dataset

* To enable malware researchers to compare different classification approaches, we disclose how to create our dataset.

* This dataset contains 164 malware images from 3 different malware families. The original malware binary programs are included in the Drebin dataset. 

* When your papers use the dataset or script-tools for the dataset, please cite the following paper.

* Rikima Mitsuhashi and Takahiro Shinagawa, <br>
"Exploring Optimal Deep Learning Models for Image-based Malware Variant Classification,"<br>
*2022 IEEE 46rd Annual Computer Software and Applications Conference (COMPSAC), 2022.*

# How to create the dataset
### 1. Apply for access to the VirusTotal Malware Sample Folder

* https://www.virustotal.com/gui/home/upload
* Contact Us -> I have a commercial inquiry -> I am interested in premium services
* There is no charge for an academic account.

### 2. Access to the VirusTotal Malware Sample Folder 

* Download Android.7z from 2020-05-06 folder.

### 3. Unzip malware files
* See the README of the VirusTotal Malware Sample folder.
* Note that these are real malware.

### 4. Make directory and copy malware files
* The following steps are confirmed in Ubuntu 20.04 LTS.
```
./00_make_directory.sh
```
* Copy your unzipped malware files to "virustotal" directory.
```
find /media/user/usb/Android -type f | xargs -i cp {} ./virustotal
```
* Check the file type. 
```
file ./virustotal/0063546ac8fed1c45cf92e7d3d5e5cf8bf6cc138a6179bcbe891a920e3f49e76
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
tar zcvf VirusTotal-May-2020-Android-IMG.tar.gz ./dataset
```
```
sha256sum ./VirusTotal-May-2020-Android-IMG.tar.gz
```
-> 2888ce0c40732259dcd6a5ec8f999f000f2a7c169649ed6ada11920aee70e27e
```
cd ./dataset
```

* 01/0f9b5da88755de1b5e9cb4894c5c0b15401cc11f8e38c9429c00e30a4ae832cf.dex.png
<img src="./sample01.png" width=10%>

* 02/1fca504cef5b106951ffd3456a9c5a8a80354d8eb942aad464ed40d7d1b7e4e8.dex.png
<img src="./sample02.png" width=10%>
