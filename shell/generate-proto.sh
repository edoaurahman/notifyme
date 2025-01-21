#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NOCOLOR='\033[0m'
# clear previous generated files
rm -rf lib/app/protos/generated/*.pb.dart
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Previous generated files cleared${NOCOLOR}"
else
    echo -e "${RED}Failed to clear previous generated files${NOCOLOR}"
    exit 1
fi

# format proto files
clang-format -i lib/app/protos/*.proto
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Proto files formatted${NOCOLOR}"
else
    echo -e "${RED}Failed to format proto files${NOCOLOR}"
    exit 1
fi

# generate protobuf files
protoc --dart_out=grpc:lib/app/protos/generated -I lib/app/protos ./lib/app/protos/*.proto
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Protos generated${NOCOLOR}"
else
    echo -e "${RED}Failed to generate protos${NOCOLOR}"
    exit 1
fi
