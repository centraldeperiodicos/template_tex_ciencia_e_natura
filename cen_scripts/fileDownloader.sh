#!/bin/bash

downloadFile() {
	url=$1
	folderName=$2

    if [ ! -d "$folderName" ] || [ -z "$(ls -A $folderName)" ]; then
      downloadZipFile $url $folderName
      extractDownloadFile $folderName
    else
     echo "$folderName already exists."
    fi
    deleteDownloadFile $folderName
}

downloadZipFile() {
	local url=$1
	local folderName=$2

	if ! isFileAvailable $url; then
		return
	fi
		
  isADropboxURL $url
  if [[ $? -eq 1 ]]; then
    if [[ $url =~ "&dl=0" ]]; then
      echo "WARNING: The '$url' is not a direct Dropbox download URL. It's being fixed."
      url=$(echo "$url" | sed 's/&dl=0/&dl=1/g')
    fi
  fi

  echo "$folderName is being downloading."
  curl -o "$folderName.zip" -Ls $url
	echo "$folderName downloaded successfully."
}

tryUpdateDropboxURL(){
  local url=$1
  if [[ $url =~ "&dl=0" ]]; then
    echo "WARNING: The '$url' is not a direct Dropbox download URL. It's being fixed."
    url=$(echo "$url" | sed 's/&dl=0/&dl=1/g')
  fi
  echo $url
}

extractDownloadFile() {
	folderName=$1
  zipFilePath="$folderName.zip"
  unzip -o -q $zipFilePath -d $folderName -x /
  echo "$folderName extracted successfully."
}

deleteDownloadFile() {
  filePath="$folderName.zip"
  rm -rf $filePath
}
	
isADropboxURL() {
  local url=$1
  local pattern='https://www.dropbox.com/scl/.*&dl=[0-1]+'

  if [[ "$url" =~ $pattern ]]; then
    return 1
  else
    return 0
  fi
}

isFileAvailable() {
	url=$1
	response=false
  statusCode=$(curl -L -o /dev/null -s -w "%{http_code}\n" -I "$url")

	if [ $statusCode -ge 200 ] && [ $statusCode -lt 300 ]; then
		response=true
	else
		echo "Invalid download link: $url" >&2
		exit 1
	fi
}
