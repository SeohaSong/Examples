(
    if [ "$home_path" = "" ]
    then
        echo "[$0] Need SEOHASONG OS."
        exit
    fi

    if [ "$1" = "" ]
    then
        echo "[$0] . init.sh MODULE_NAME"
        exit
    else
        touch __init__.py
        touch module.py
        cp $home_path/SEOHASONG/.gitignore .
        echo "# $1" > README.md
        rm -rf init.sh .git
        mv ../template.module ../$1
    fi
)

if [ -f "__init__.py" ]
then
    cd .
fi