wget http://mattmahoney.net/dc/enwik9.zip
unzip enwik9.zip
rm enwik9.zip
echo Preprocessing wiki data...
perl wikifil.pl enwik9 > wiki_text

