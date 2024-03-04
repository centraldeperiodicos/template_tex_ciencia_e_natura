class FileDownloader {

	FileDownloader() {

    }
	
	[void] downloadFile($url, $folderName) {
        if (-not ($this.DoesOutputFolderExists($folderName)) -or $this.IsOutputFolderEmpty($folderName)) {
			$this.downloadZipFile($url, $folderName)
            $this.extractDownloadFile($folderName)
            $this.deleteDownloadFile($folderName)
        } else {
			Write-Host "$($folderName) already exists."
        }
    }
	
	[void] downloadZipFile($url, $folderName) {
		try {
			if(-not($this.isFileAvailable($url))){
				return
			}
			
			$newUrl = $url
			if ($this.isAnDropboxURL($url)) {
				$newUrl = $this.checkDropboxDirectlyDownloadableURL($url)
			}
						
			Write-Host "$($folderName) is being downloading."
			Invoke-WebRequest -Uri $newUrl -OutFile "$($folderName).zip" -ErrorAction Stop
			Write-Host "$($folderName) downloaded successfully."
        } catch {
			throw [System.Net.WebException]::new("Bad download link: $url")
        }
    }

	[string] checkDropboxDirectlyDownloadableURL($url) {
		$newUrl = $url
		if ($url -match "&dl=0") {
			Write-Host "WARNING: The '$($url)' is not a direct Dropbox download URL. It's being fixed."
			$newUrl = $url -replace "&dl=0", "&dl=1"	
		}
		return $newUrl
	}
	
	[void] extractDownloadFile($folderName) {
        try {
            $zipFilePath = "$folderName.zip"
            Expand-Archive -Path $zipFilePath -DestinationPath $folderName -Force -ErrorAction Stop
            Write-Host "$($folderName) extracted successfully."
        } catch {
            throw [System.IO.IOException]::new("Bad zip file: $this.zipFilePath")
        }
    }

    [void] deleteDownloadFile($folderName) {
        $filePath = "$folderName.zip"
        if (Test-Path $filePath) {
            Remove-Item -Path $filePath -Force -ErrorAction Stop
        }
    }
		
	[bool] doesOutputFolderExists($folderPath){
		return Test-Path $folderPath -PathType Container
	}
	
	[bool] isOutputFolderEmpty($folderPath){
		$items = Get-ChildItem -Path $folderPath
		return ($items.Count -eq 0)
	}

    [bool] isAnDropboxURL($url) {
        if ($url -match "https:\/\/www\.dropbox\.com\/scl\/.*&dl=\d+") {
            return $true
        }
        return $false
    }
	
	[bool] isFileAvailable($url) {
	$response = $false 
	$request = $null
	try{
		$request = Invoke-WebRequest -Uri $url -Method Head -ErrorAction Stop
		$contentType = $request.Headers["Content-Type"]
		$statusCode = $request.StatusCode
	
		if ($statusCode -ge 200 -and $statusCode -lt 300) {
			$response = $true;
		} 
		
		} catch {
			throw [System.Net.WebException]::new("Invalid download link: $url")
		}
		return $response
	}

}