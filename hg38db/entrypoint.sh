if [ -z "${QUERY}" ]; then
  echo "you must enter QUERY as env variable"
else
    if [ -z "${FILE_NAME}" ]; then
        mysql --user=genome --host=genome-mysql.soe.ucsc.edu -A -P 3306 -D hg38 -e "${QUERY}"
    else
        echo "save the result in ${FILE_NAME}.csv"
        mysql --user=genome --host=genome-mysql.soe.ucsc.edu -A -P 3306 -D hg38 -e "${QUERY}" | tr '\t' ',' > ./share_folder/${FILE_NAME}.csv
    fi
fi