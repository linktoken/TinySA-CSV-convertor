# Prompt the user for the input file location
$inputFile = Read-Host "Please enter the path to the input CSV file"

# Prompt the user for the output file location
$outputFile = Read-Host "Please enter the path to the output CSV file"

# Import the CSV file and set the delimiter and column headers
$csv = Import-Csv -Path $inputFile -Delimiter ";" -header freq, level 

# Modify the data
foreach ($Item in $csv) {
    $Item.freq = [math]::Round($Item.freq/1000000,3) 
    $Item.level = [math]::Round($Item.level,0)
}

# Export the modified data to the specified output file
$csv | Export-Csv -Path $outputFile -Delimiter "," -NoType 

# Remove quotation marks from the output file
(Get-Content $outputFile) -replace '"' | select -Skip 1 | Set-Content $outputFile

# Rename the output file
$newFileName = $outputFile -replace "\.csv", "-$(Get-Date -Format 'HHmmMMddyyyy').csv"
Rename-Item $outputFile $newFileName