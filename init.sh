(
    if [ "$1" != "" ]
    then
        touch __init__.py
        touch module.py
        cp ~/SEOHASONG/.gitignore .
        echo "# $1" > README.md
        rm -rf init.sh .git
        mv ../template.module ../$1
    fi
)

if [ -f "__init__.py" ]
then
    cd .
fi