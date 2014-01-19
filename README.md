# NYPD Crime Statistics

---

Every week the New York Police Department puts up new PDF files ([linking page](http://www.nyc.gov/html/nypd/html/crime_prevention/crime_statistics.shtml)) but historical PDFs do not seem to be available. The script `archive.sh` is therefore run every Tuesday at 2:02 with a crontab like this:

    2 2 * * 2 archive.sh

This saves the new PDFs and then pushes them to this repository. It is left to the data consumer to extract desired data. It has been helpfully noted that `[pdftotext](http://en.wikipedia.org/wiki/Pdftotext) -layout` will get you pretty far with these files.

For another effort to maintain this data over time, see [some](https://classic.scraperwiki.com/scrapers/current-week-reported-crime-city-wide-and-for-prec/) [work](https://classic.scraperwiki.com/scrapers/nycrime/) on ScraperWiki.

This archival process was set up as part of [Sunlight](http://sunlightfoundation.com/)'s 2014 [PDF Liberation](http://pdfliberation.wordpress.com/2013/11/15/hackathon/) hackathon.
