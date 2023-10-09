docker run -d -v $PWD/.aws-lambda-rie:/aws-lambda -p 9000:8080 \
--entrypoint /aws-lambda/aws-lambda-rie \
api-gateway:api-gateway-golang \
    ./main