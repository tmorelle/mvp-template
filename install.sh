#!/bin/bash
echo "Installing template files..."

find /Applications -path "*.app" -prune \( -name "*Android Studio*" -or -name "*IntelliJ IDEA*" \) -print0 | while read -d $'\0' folder
do
  echo "Installing to $folder"
  rm -rf "$folder/Contents/plugins/android/lib/templates/other/TMoreMVP" || true
  mkdir -p "$folder/Contents/plugins/android/lib/templates/other/TMoreMVP" || true
  cp -R $(pwd)/* "$folder/Contents/plugins/android/lib/templates/other/TMoreMVP"
done

echo "Restart IntelliJ and/or AndroidStudio"
