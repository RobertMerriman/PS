#####Parsed Description into an array to replace Approval Type#####

$desc =  '[kho] [Approval:Required] my desc'#(Get-ADGroup SnowTest2 -Properties Description).Description
$arr = $desc.Split("[,]")
$arr = $arr |  ? { $_ }
$arr = $arr -ne " "
$arr[1] = 'Approval:None'
$myOutput = "["+$arr[0]+"]"+"["+$arr[1]+"]"+"["+$arr[2]+"]"
$myOutput

#####Sets AD Descrtiption#####

#Set-ADGroup SnowTest2 -Description $myOutput
#(Get-ADGroup SnowTest2 -Properties Description).Description