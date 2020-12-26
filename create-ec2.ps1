$imageDetails = aws ec2 describe-images --filters Name="tag:Name",Values="thinknyx-httpd-java" | ConvertFrom-Json
$amiID = $imageDetails.Images.ImageId

$keyPairs = aws ec2 describe-key-pairs| ConvertFrom-Json
foreach($keyPair in $keyPairs.KeyPairs){
    if ($keyPair.KeyName -match "ericsson"){
        $keyName = $keyPair.KeyName
    }
}

$systemInfo = aws ec2 run-instances --image $amiID --key-name $keyName --instance-type "t2.micro"
sleep 60
$instanceID = ($systemInfo | ConvertFrom-Json).Instances.InstanceId
aws ec2 describe-instances --filters Name="instance-id",Values="$instanceID"