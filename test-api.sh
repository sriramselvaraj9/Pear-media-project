#!/bin/bash

# Pear Media - API Testing Script
# Tests all endpoints locally

API_URL="http://localhost:3000"

echo "🧪 Pear Media API Testing Script"
echo "=================================="
echo ""

# Check if server is running
echo "Checking server health..."
curl -s "$API_URL/api/health" > /dev/null
if [ $? -eq 0 ]; then
    echo "✅ Server is running!"
else
    echo "❌ Server is not running"
    echo "Start with: npm start"
    exit 1
fi

echo ""
echo "Test 1: Text Enhancement"
echo "------------------------"
curl -X POST "$API_URL/api/enhance-text" \
  -H "Content-Type: application/json" \
  -d '{
    "text": "A magical forest with glowing trees and mysterious creatures"
  }' | jq .

echo ""
echo "Test 2: Image Generation"
echo "------------------------"
curl -X POST "$API_URL/api/generate-image" \
  -H "Content-Type: application/json" \
  -d '{
    "prompt": "Futuristic cyberpunk city with neon lights and flying vehicles"
  }' | jq '.generated_images | .[0]'

echo ""
echo "✅ All tests completed!"
echo ""
echo "Visit http://localhost:3000 in your browser to test the UI"
