TEMPFILE=temp.subs
TEMPFILE2=temp.subs2
az account list -o table > $TEMPFILE
tail -n 2 $TEMPFILE > $TEMPFILE2
i=0
while read l; do
  echo "$i - $l"
  let i=i+1
done <$TEMPFILE2
echo "Select subscription:"
read SS
let line=SS+1
subinfo=$(awk "NR==$line" $TEMPFILE2)
echo $subinfo
sid=$(echo $subinfo | awk -F ' ' '{print $3}')
az account set --subscription $sid
