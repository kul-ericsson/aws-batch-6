$imageDetails = aws ec2 describe-images --filters Name="tag:Name",Values="thinknyx-httpd-java" | ConvertFrom-Json
$imageDetails.Images.ImageId
