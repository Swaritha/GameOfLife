#!/bin/bash

# avoid virtual desktop jumps at mac terminal on test run
export JAVA_TOOL_OPTIONS='-Djava.awt.headless=true'

./gradlew :appUnitTests:testDebug \
          :appUnitTests:jacocoTestReport \
          :appComponentTests:testDebug \
          :appComponentTests:jacocoTestReport \
          :app:connectedCheck

echo "test reports: $(pwd)/build/index.html"