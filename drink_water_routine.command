titles[0]="Drink Water!"
titles[1]="Have you drank water yet?"
titles[2]="Time for some H20!"
titles[3]="Hydrate."
titles[4]="Fill up your water bottle!"
titles[5]="Time to hydrate!"
titles[6]="Time to drink water"
titles[7]="This is you from the past, drink water!"
titles[8]="Ingest fluids now."

subtitles[0]="You magnicifient, dehydrated beast."
subtitles[1]="Do it now!"
subtitles[2]="You'll feel better!"
subtitles[3]="It improves concentration."
subtitles[4]="There's always time for water."
subtitles[5]="Go fill that 4-bottles-a-day quota!"
subtitles[6]="Or get some tea. Tea is fine too."

RANDOM=$$$(date +%s)

while [ true ]
do
  # Wait 30 minutes (30 * 60 = 1800 seconds). sleep 30m does not appear to work
  sleep 1800s
  randomTitleIndex=$[$RANDOM % ${#titles[@]}]
  title=${titles[$randomTitleIndex]}

  randomSubtitleIndex=$[$RANDOM % ${#subtitles[@]}]
  subtitle=${subtitles[$randomSubtitleIndex]}

  command='display notification "'${subtitle}'" with title "'${title}'"'
  osascript -e "${command}"
done