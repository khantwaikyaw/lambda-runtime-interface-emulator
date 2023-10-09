# AWS-Lambda-Runtime-Interface-Emulator

## **Documentation v1.0.0**
- Create a directory named **`.aws-lambda-rie`**.
- And then create a file **`aws-lambda-rie`** without any file extension.
- run the script file 
  ```
  mkdir -p $PWD/.aws-lambda-rie && curl -Lo $PWD/.aws-lambda-rie/aws-lambda-rie \
  https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie \
  && chmod +x $PWD/.aws-lambda-rie/aws-lambda-rie
  ```
  
#### Note
 - if windows platform and don't have permission access
   ```
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
   ```
   
### Testing

Request with Empty Payload
 ```
 curl "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{}'
 ```

Request with JSON Payload
```
curl "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"payload":"hello world!"}'
```