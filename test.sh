#!/bin/bash
if grep -q "welcome to my helloworld" indexjen.html
then
echo "Test Passed : website title found"
else
echo "Test failed: website title not found"
exit 1
fi
