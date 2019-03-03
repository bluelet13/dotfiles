if [ $# = 0 ]; then
    echo "usage: ze [./file] [./dirctory]"
else
    arg=$1
    password=`pwgen -y -s -B 20 1`

    file_name=`basename $arg`
    zip -e --password "$password" "$file_name.zip" $arg
    
    echo "archive success!"
    echo "== compress success !! =============================="
    echo "filename => $file_name.zip"
    echo "password => $password"
    echo "====================================================="
fi
