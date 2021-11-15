#!/bin/bash
echo "--- Build image ---"
echo "Project version: ${{  steps.Export_Version.outputs.PROJECT_VERSION  }}"
IMAGE_NAME=${{  steps.Export_Version.outputs.PROJECT_VERSION  }}
docker build . --file Dockerfile --tag $IMAGE_NAME