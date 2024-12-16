#!/bin/bash

# Verify if 'requirements.txt' exists
if [ ! -f "requirements.txt" ]; then
  echo "The file 'requirements.txt' doesn't exist. Aborting the installation."
  exit 1
fi

# Detect the package management system
if command -v apt-get &> /dev/null; then
    INSTALL_CMD="sudo apt-get install -y"
elif command -v dnf &> /dev/null; then
    INSTALL_CMD="sudo dnf install -y"
elif command -v pacman &> /dev/null; then
    INSTALL_CMD="sudo pacman -S --noconfirm"
elif command -v zypper &> /dev/null; then
    INSTALL_CMD="sudo zypper install -y"
else
    echo "The package manager couldn't be detected. Aborting the installation."
    exit 1
fi

# Read 'requirements.txt' and install the packages
echo "Installing dependencies..."

while IFS= read -r package
do
  if [ -n "$package" ]; then  # Verify that the line isn't empty
    echo "Installing $package..."
    $INSTALL_CMD "$package"
  fi
done < "requirements.txt"

echo "¡Installation completed!"
