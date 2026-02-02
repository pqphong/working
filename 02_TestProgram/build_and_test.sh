#!/bin/bash

# Set PATH to include Cygwin
export PATH=$PATH:/cygdrive/c/workspace/cygwin/bin

cd tp/obj
make clean

make ghs=true

cd ./../../

cd execute_test
/cygdrive/c/GHS/multi_814/multi -connect="rfwserv -cpu=pe0 -mcu=RCarU5L4.mcu -D -hwbpsc -loadall -acc_running -swbp_flash" -p all_ghs.rc

mv test_result.log test_result_GHS.log
rm -f test_result.log
