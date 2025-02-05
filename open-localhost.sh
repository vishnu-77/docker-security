#!/bin/bash

response=$(curl http://127.0.0.1:8080)

# Print the response
echo "$response"

sleep 10
wait

# Define the URL
website="http://localhost:8080/"

# Open the website in the default web browser
xdg-open "$website"   # For Linux systems using xdg-open
