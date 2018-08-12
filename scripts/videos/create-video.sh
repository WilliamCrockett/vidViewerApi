#!/bin/bash

curl "http://localhost:4741/videos" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "video": {
      "name": "'"${NAME}"'",
      "date": "'"${DATE}"'",
      "url": "'"${URL}"'"
    }
  }'

echo

# TOKEN="BAhJIiVmZDljZDYyNjBkMGQzOTkxMWFlNDQ1NmIwMDRhYWFmOAY6BkVG--2ff68843093aeb4f51bb134c8fe939166c783a15" FULL_NAME="Bob Martin" SAS_NUMBER="SAS002" CELL_NUMBER="0831234567" NEXT_OF_KIN="Pa" NOK_CELL_NUM="1234567890" SHIRT_SIZE="Large"
# TOKEN="BAhJIiU0NDIwNzJjMjJhNTkzYzFmYjQwZjRiOWI0ZDNlMmI0NgY6BkVG--abe630c6428073d5dbe5b1c2d5b9117163611b8d" FULL_NAME="Georgy Boy" SAS_NUMBER="SAS003" CELL_NUMBER="0831234567" NEXT_OF_KIN="Pa" NOK_CELL_NUM="1234567890" SHIRT_SIZE="Large"


# TOKEN="BAhJIiViODc1YzdmZGNlNjU0MWY0NzAyZjEwYzk2OGE3YmRhMAY6BkVG--4c17eb818e5e9d305fce1b3c02dfa327aa7a00cb" NAME="CANS Race 3" DATE="11 August 2018" URL="https://www.youtube-nocookie.com/embed/H4OO56w3BpI?rel=0" sh scripts/videos/create-video.sh
