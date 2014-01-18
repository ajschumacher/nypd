#!/bin/sh

# Change to directory of script
cd "$(dirname "$0")"

# Create directory to hold files (dated)
DATED=$(date +"%Y-%m-%d")
mkdir $DATED

# Clear out anything lurking from before
rm -rf www.nyc.gov

# Download files
wget -r --wait=10 --random-wait --include /html/nypd/downloads/pdf/crime_statistics http://www.nyc.gov/html/nypd/html/crime_prevention/crime_statistics.shtml

# Move the PDFs and HTML file
mv www.nyc.gov/html/nypd/downloads/pdf/crime_statistics/*.pdf $DATED
mv www.nyc.gov/html/nypd/html/crime_prevention/crime_statistics.shtml $DATED

# Remove the wget file structure
rm -rf www.nyc.gov

# And send it to git
git add .
git commit -m "auto-update for $DATED"
git push
