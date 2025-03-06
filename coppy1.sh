copy)
# Copy a file
      if [ -f "$source_file" ]; then
      cp "$source_file" "$destination_file"
      if [ $? -eq 0 ]; then
      echo "File '$source_file' copied to '$destination_file'
   successfully."
      else
         echo "Error: Could not copy file '$source_file' to
     '$destination_file'."
        fi
else
echo "Error: Source file '$source_file' does not exist."
fi
;;
