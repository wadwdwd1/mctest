#!/bin/bash

npm install

# Make sure GEMINI is set
if [ -z "$GEMINI" ]; then
  echo "GEMINI secret is not set!"
  exit 1
fi

# Replace {gemini} in the template with the actual secret and write to keys.json
sed "s|{gemini}|$GEMINI|g" keys.json.template > keys.json

echo "keys.json has been generated with the secret."
