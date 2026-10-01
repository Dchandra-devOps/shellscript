#!/bin/bash/

echo "learning if conditions"

if [$? eq 0]; then
   echo "last command executed successfully"

elif [$? ne 0]; then 
  echo "last command failed"

else
  echo "check the cooamnd"
fi


