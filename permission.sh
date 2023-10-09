# Get the current ACL of the file
$file = ".aws-lambda-rie\aws-lambda-rie"
$acl = Get-Acl $file

# Define a new permission rule
$rule = New-Object System.Security.AccessControl.FileSystemAccessRule(
    "khant",  # Replace with the actual user/group
    "FullControl",  # Replace with the desired permission level
    "Allow"         # Replace with "Allow" or "Deny"
)

# Add the new rule to the ACL
$acl.AddAccessRule($rule)

# Apply the modified ACL to the file
Set-Acl $file $acl
