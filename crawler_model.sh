while getopts m: flag
do
    case "${flag}" in
        m) modelname=${OPTARG};;
    esac
done
echo "modelname: $modelname";


# folder
mkdir $modelname
mkdir $modelname/utils
mkdir $modelname/logs
mkdir $modelname/data
mkdir $modelname/data/pkl
mkdir $modelname/data/crawled

# files
touch $modelname/__init__.py
touch $modelname/main.py
touch $modelname/utils/info.py
