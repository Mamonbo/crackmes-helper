url_prefix=https://crackmes.one/static/crackme/

problem_id=$(echo $1 |tail -c 25)
echo $problem_id

#get page's title
wget --no-clobber $1
page_title=$(grep '<title>' $problem_id|sed 's/ *<title>//'|sed 's_</title>__'
)
mkdir "$page_title"
cd "$page_title"
mv ../$problem_id ./

target_url=$(echo "$url_prefix$problem_id.zip")
wget --no-clobber $target_url 

7z e $problem_id.zip -pcrackmes.one
