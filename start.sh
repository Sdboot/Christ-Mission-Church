#!/bin/bash
# Build and run the Christ Mission Church website

echo "Installing dependencies..."
npm install --legacy-peer-deps

echo "Starting development server..."
npm run dev
