if [ "$1" = "" ]; then
    echo "No enter word. Please enter translate word."
    exit 1
fi

response=`aws translate translate-text --region us-east-1 --source-language-code "ja" --target-language-code "en" --text "$1" | jq -r '.TranslatedText'`

echo $response | pbcopy

echo "Translation is complete! And copied to the clipboard"
echo "$1 => $response"
