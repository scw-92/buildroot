#!/bin/bash
cd /home/`users`/buildroot-2017.02.3/output/build

if [ -d $1 ]
then
    cd $1
    touch .stamp_target_installed
    rm .stamp_target_installed
    touch .stamp_built
    rm .stamp_built
    echo "$1 rm-.stamp_target_installed"
    cd ..
    exit 0
elif [ 'clean' = $1 ]
    then
        rm -rf /home/`users`/buildroot-2017.02.3/output/target/
        rm -rf /home/`users`/buildroot-2017.02.3/output/images/
        exit 0
else
        echo "$1 is not dir, please input yes continue!!!"
        read a
        if [ $a != 'yes' ]
        then
            exit 0 
        fi
fi


dir=`ls`
for file1 in $dir
do
    echo $file1
    if [ -f $file1 ]
    then
        if [ $file1 != rm-install.sh ] 
        then
        rm $file1
            echo rm- $file1
        fi
        
    else
        if [ -d $file1 ]
        then
            cd $file1
            touch .stamp_target_installed
            rm .stamp_target_installed
            touch .stamp_built
            rm .stamp_built
            echo "$file1 rm-.stamp_target_installed"
            cd ..
        fi
    fi

    done
