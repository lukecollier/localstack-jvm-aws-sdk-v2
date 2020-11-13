#!/bin/sh

CONTAINER_ID=$(docker run -d -p 4566:4566 -e "SERVICES=kinesis" localstack/localstack:0.12.2);

until AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test aws kinesis list-streams --region eu-east-1 --endpoint-url http://0.0.0.0:4566
do
  echo "Stream not yet started"
  sleep 5
done

AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test aws kinesis create-stream --stream-name test-stream --shard-count 1 --region eu-east-1 --endpoint-url http://0.0.0.0:4566

./gradlew run || true

docker kill "$CONTAINER_ID"


