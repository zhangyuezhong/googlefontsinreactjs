$url = 'https://fonts.googleapis.com/css2?family=Liu+Jian+Mao+Cao&display=swap'

$ProgressPreference = 'SilentlyContinue';
$workingDir= $PSScriptRoot
$outDir= $workingDir +'\public\fonts'
if(Test-Path -Path $outDir){
	Write-Output "Clean $outDir"
	Remove-Item -Path $outDir\* -Recurse -Force
}else{
	Write-Output "Create $outDir"
	New-Item -Path $outDir -ItemType Directory
}
Write-Output "Download Google fonts to $outDir"

$css2 = "$outDir\css2.css"

Invoke-WebRequest -Uri $url -OutFile $css2
$content = Get-Content $css2
ForEach($line in $content){
    $start = $line.IndexOf('https://fonts.gstatic.com/');
    if($start -gt 6){
        $end = $line.IndexOf(')', $start);
        if($end -gt $start)
        {
             $fontUrl = $line.Substring($start,$end-$start);

             #GET subdirectory
             $start =  $line.IndexOf('/', $line.IndexOf('fonts.gstatic.com'));
             $end =  $line.LastIndexOf('/');
             $subdirectory = $line.Substring($start, $end - $start);

             #GET filename
             $start =  $line.LastIndexOf('/') + 1;
             $end =  $line.IndexOf(')', $start);

             $filename = $line.Substring($start, ($end - $start))

             #GET target dir
             $targetDir = $outDir + $subdirectory.Replace('/','\')
             if(-not (Test-Path -Path $targetDir)){
                New-Item -Path $targetDir -ItemType Directory
             }
             #GET target file
             $targetFile = $targetDir +'\' + $filename
             Invoke-WebRequest -Uri $fontUrl -OutFile $targetFile

        }  
    }
}

((Get-Content -path $css2 -Raw) -replace 'https://fonts.gstatic.com/','./') | Set-Content -Path $css2
