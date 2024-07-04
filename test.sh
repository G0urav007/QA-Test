#!/bin/bash

FRONTEND_URL=$(minikube service frontend-service --url)

RESPONSE=$(curl -s $FRONTEND_URL)
EXPECTED_MESSAGE="Hello from Backend"

if echo $RESPONSE | grep -q "$EXPECTED_MESSAGE"; then
  echo "Test Passed"
else
  echo "Test Failed"
  exit 1
fi
