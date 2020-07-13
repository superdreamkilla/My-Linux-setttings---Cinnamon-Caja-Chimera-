location=`zenity --file-selection --directory --title="Select a directory"`
for arg
   do
     if [ -e "$location"/"$arg" ];then
       zenity --question --title="Conflict While Copying" --text="File "$location/$arg" already exists. Would you like to replace it?"
     case "$?" in
       1 ) exit 1 ;;
       0 ) mv "$arg" "$location" ;;
     esac
     else
       mv "$arg" "$location"
     fi
   done
