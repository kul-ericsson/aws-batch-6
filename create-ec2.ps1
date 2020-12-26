﻿$imageDetails = aws ec2 describe-images --filters Name="tag:Name",Values="thinknyx-httpd-java" | ConvertFrom-Json
$amiID = $imageDetails.Images.ImageId

$keyPairs = aws ec2 describe-key-pairs| ConvertFrom-Json
foreach($keyPair in $keyPairs.KeyPairs){
    if ($keyPair.KeyName -match "ericsson"){
        $keyName = $keyPair.KeyName
    }
}
