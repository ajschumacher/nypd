# NYPD Crime Statistics

The New York Police Department [puts up](http://www.nyc.gov/html/nypd/html/crime_prevention/crime_statistics.shtml) new PDFs with crime data every week, but historical PDFs do not seem to be available. The script `archive.sh` is therefore run every Tuesday at 2:02 AM with a crontab like this:

    2 2 * * 2 archive.sh

This saves all the week's PDFs in a dated directory and then pushes them to this repository, creating a growing archive of the original PDFs so that they can be accessed and used however may be desired at any point in the future.

It is left to the data consumer to extract desired data. It has been helpfully noted that `pdftotext -layout` will get you pretty far with these files.

See also:
* For another effort to maintain this data over time, see [some](https://classic.scraperwiki.com/scrapers/current-week-reported-crime-city-wide-and-for-prec/) [work](https://classic.scraperwiki.com/scrapers/nycrime/) at ScraperWiki.
* The data feeding the [NYC Crime Map](http://maps.nyc.gov/crime/) is certainly related, and Tom Levine has done [work](https://github.com/tlevine/nyc-crime-map) to extract this data, in geoJSON format.
* The Internet Archive [Wayback Machine](https://archive.org/web/) has occasionally archived some of these PDFs, so some historical data could be filled in that way.
* [Tabula](http://tabula.nerdpower.org/) (also [tabula-extractor](https://github.com/jazzido/tabula-extractor)) constitute another possible way to extract data from these PDFs.

This archival process was set up as part of [Sunlight](http://sunlightfoundation.com/)'s 2014 [PDF Liberation](http://pdfliberation.wordpress.com/2013/11/15/hackathon/) hackathon ([hackpad](https://hackpad.com/PDF-Liberation-Hackathon-RoegEpdwJKE)).
