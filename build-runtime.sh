mkdir -p $PWD/.aws-lambda-rie && curl -Lo $PWD/.aws-lambda-rie/aws-lambda-rie \
  https://github.com/aws/aws-lambda-runtime-interface-emulator/releases/latest/download/aws-lambda-rie \
  && chmod +x $PWD/.aws-lambda-rie/aws-lambda-rie