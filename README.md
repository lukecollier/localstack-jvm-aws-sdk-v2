# Localstack Kinesis problem with AWS SDK V2

This repo aims to provide a reproducible example of where the aws sdk v2 doesn't work with local stack

## Quickstart
* run ./example-script.sh

## Output
```pre
PutRecord::start
PutRecord::finish
GetShardIterator::start
gotAAAAAAAAAAEoMpM6QUe6vxVNtVB9eeK5C7owD8ERF+0l5YmA0dg7APZvukoykXzThG1vJT0gyHZgtWGOpSTW/QDAKtA4sUvTwB8o5JVFGve2d/ag1j3nMCjlpTiP8IT21aTyFpWHc3OqmnxSfBNgQMyMfBeFBtaIpLdpOJ3lMch6CxnBNrXkEkd/XBLB/p3NZ+t1l/D3K4c=
GetShardIterator::finish
GetRecords::start
failed with software.amazon.awssdk.core.exception.SdkClientException: Unable to parse date : 1.605283809962E9

BUILD SUCCESSFUL in 3s
2 actionable tasks: 2 executed
```
