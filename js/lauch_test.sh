
#!/bin/bash

echo $1

for f in *; do
  name=`echo $f |cut -d_ -f-3`
  echo "$name -> $(node ~/public/js/tests/test.mjs $f $1)"
  echo ""
done
