url_prefix=https://crackmes.one/static/crackme/

problem_id=$(echo $1 |tail -c 25)
echo $problem_id

#get page's title
wget $1
page_title=$(cat $problem_id | python3 take_title.py)
mkdir "$page_title"
cd "$page_title"

target_url=$(echo "$url_prefix$problem_id.zip")
wget $target_url 

7z e $problem_id.zip -pcrackmes.one
