#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$DIR/quiz-service/build.sh -DskipTests
$DIR/client/build.sh
