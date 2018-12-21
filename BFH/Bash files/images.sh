#!/usr/bin/env bash
echo Start Script

# Array so save the path of the NII and DICOM files
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

#for i in ${file_list_unsorted[@]}; do echo $i; done

# Sort the NII files
file_list=($(echo ${file_list_unsorted[*]}| tr " " "\n" | sort -n))
file_list2=($(echo ${file_list_unsorted2[*]}| tr " " "\n" | sort -n))

#for i in ${file_list[@]}; do echo $i; done

# Search and sort DICOM files
while IFS= read -d $'\0' -r file ; do
    file_list_unsorted_DICOM=("${file_list_unsorted_DICOM[@]}" "$file")
done < <(find * -name "*.dcm" -print0)

while IFS= read -d $'\0' -r file ; do
    file_list_unsorted_DICOM2=("${file_list_unsorted_DICOM2[@]}" "$file")
done < <(find * -name "*.dcm" -print0)

#for i in ${file_list_unsorted_DICOM[@]}; do echo $i; done

# Sort the DICOM files
file_list_DICOM=($(echo ${file_list_unsorted_DICOM[*]}| tr " " "\n" | sort -n))
file_list_DICOM2=($(echo ${file_list_unsorted_DICOM2[*]}| tr " " "\n" | sort -n))


# Add NII Buttons
printf "%s\n" "<h1> Images </h1>" >> index.html
printf "%s\n" '<ul id="myUL">' >> index.html

# Added for testing
for ((i=0; i<${#file_list[@]}; i++)); do
echo ${file_list[i]} | rev | cut -d'/' -f2- | rev
done

# Add the NII button with their path as carrot
printf '<li><span class="caret">%s' ${file_list[0]} | rev | cut -d'/' -f2- | rev >> index.html
printf "%s" '</span><ul class="nested">' >> index.html
for ((i=0; i<${#file_list[@]}-1; i++)); do
one=${file_list[i]%/*}
two=${file_list[i+1]%/*}
echo "$one"
echo "$two"
if [ "$one" = "$two" ]
then
printf '<li><input type=\"button\" class=\"button\" value=\"%s\" onclick=\"viewimage('\''%s'\'');\" />' "${file_list[i]##*/}" "${file_list2[i]}" >> index.html
printf '<input type=\"button\" class=\"button2\" value=\"%s\" onclick=\"addImage('\''%s'\'');\" /></li>' "Overlay" "${file_list2[i]}" >> index.html
elif [ "$one" != "$two" ]
then
printf '<li><input type=\"button\" class=\"button\" value=\"%s\" onclick=\"viewimage('\''%s'\'');\" />' "${file_list[i]##*/}" "${file_list2[i]}" >> index.html
printf '<input type=\"button\" class=\"button2\" value=\"%s\" onclick=\"addImage('\''%s'\'');\" /></li>' "Overlay" "${file_list2[i]}" >> index.html
printf "%s\n" "</ul>" >>  index.html
printf "%s\n" "</li>" >>  index.html
printf "%s" "</ul>" >>  index.html
printf "%s\n" '<ul id="myUL">' >> index.html
printf '<li><span class="caret">%s' ${file_list[i+1]%/*} >> index.html
printf "%s" '</span><ul class="nested">' >> index.html
fi
done

printf '<li><input type=\"button\" class=\"button\" value=\"%s\" onclick=\"viewimage('\''%s'\'');\" />' "${file_list[-1]##*/}" "${file_list2[-1]}" >> index.html
printf '<input type=\"button\" class=\"button2\" value=\"%s\" onclick=\"addImage('\''%s'\'');\" /></li>' "Overlay" "${file_list2[i]}" >> index.html
printf "%s\n" "</ul>" >>  index.html
printf "%s\n" "</li>" >>  index.html
printf "%s" "</ul>" >>  index.html

echo End Script