#!/usr/bin/env bash
echo Start Script

file_list=()
file_list2=()
file_list_DICOM=()
file_list_DICOM2=()


# Search and sort NII files
while IFS= read -d $'\0' -r file ; do
    file_list_unsorted=("${file_list_unsorted[@]}" "$file")
done < <(find * -name "*.nii" -print0)

while IFS= read -d $'\0' -r file ; do
    file_list_unsorted2=("${file_list_unsorted2[@]}" "$file")
done < <(find * -name "*.nii" -print0)

for i in ${file_list_unsorted[@]}; do echo $i; done

file_list=($(echo ${file_list_unsorted[*]}| tr " " "\n" | sort -n))

file_list2=($(echo ${file_list_unsorted2[*]}| tr " " "\n" | sort -n))

for i in ${file_list[@]}; do echo $i; done

# Search and sort DICOM files
while IFS= read -d $'\0' -r file ; do
    file_list_unsorted_DICOM=("${file_list_unsorted_DICOM[@]}" "$file")
done < <(find * -name "*.dcm" -print0)

while IFS= read -d $'\0' -r file ; do
    file_list_unsorted_DICOM2=("${file_list_unsorted_DICOM2[@]}" "$file")
done < <(find * -name "*.dcm" -print0)

for i in ${file_list_unsorted_DICOM[@]}; do echo $i; done

file_list_DICOM=($(echo ${file_list_unsorted_DICOM[*]}| tr " " "\n" | sort -n))

file_list_DICOM2=($(echo ${file_list_unsorted_DICOM2[*]}| tr " " "\n" | sort -n))


#<div class="btn-group" style="width:100%;float: left;width: 15%">
#<input id="1" type="button" value="clickme" onclick="viewimage('NII/c2s0010236252-0101-00001-000001-01.nii');" />

# Add NII Buttons
printf "<h1> NII </h1>" > content.inc
printf "%s\n" '<div class="btn-group-nii" style="width:100%;float: left;width: 15%">' > content.inc
for ((i=0; i<${#file_list[@]}; i++)); do
printf '<input id=\"1\" type=\"button\" value=\"%s\" onclick=\"viewimage('\''%s'\'');\" />\n' "${file_list[i]}" "${file_list2[i]}" >> content.inc
done

#printf "%s" "</ul>" >> content.inc

# Add DICOM Buttons
printf "<h1> DICOM </h1>" > content.inc
printf "%s\n" '<div class="btn-group-dicom" style="width:100%;float: left;width: 15%">' > content.inc
for ((i=0; i<${#file_list_DICOM[@]}; i++)); do
printf '<input id=\"1\" type=\"button\" value=\"%s\" onclick=\"viewimage('\''%s'\'');\" />\n' "${file_list_DICOM[i]}" "${file_list_DICOM2[i]}" >> content.inc
done


#print

cat content.inc

mv content.inc content.html

#find -name "*.nii" -o -name "*.dcm" -type f > index.html
#find . -name "*.c" -o -name "*.cpp"

echo End Script
