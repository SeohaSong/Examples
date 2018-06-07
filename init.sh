(
    if [ "$home_path" = "" ]
    then
        echo "[$0] Need SEOHASONG OS."
        exit
    fi

    if [ "$1" = "" ]
    then
        echo "[$0] . init.sh <module_name>"
    fi

    mkdir module && touch module/init.py
    echo \
"import os
os.system('git submodule init')
os.system('git submodule update')"\
    > module/init.py
    echo "from .module import init" > __init__.py
    touch module.py
    cp $home_path/SEOHASONG/.gitignore .
    echo "# $1" > README.md

    rm -rf init.sh .git
    mv ../template.module ../$1
)

if [ -f "__init__.py" ]
then
    cd .
fi