#!/bin/bash/



# gt - greater than
# lt - less than
# eq - equal
# ne - not equal
# ge - greater than or equal
# le - less than or equal

echo "learning if conditions"

if [ $? -eq 0 ];  then
   echo "last command executed successfully"

elif [ $? -ne 0 ]; then 
  echo "last command failed"

else
  echo "check the command"
fi


