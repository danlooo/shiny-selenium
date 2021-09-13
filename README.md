# shiny-selenium: Web-scraping using a shiny app

This repo demonstrate how to access a selenium server running in another docker container using a R shiny app.

## Installation

Execute in bash:

```
git clone https://github.com/danlooo/shiny-selenium.git
cd shiny-selenium
docker-compose up --build
```

The shiny app will be accessible at [http://localhost:3838/](http://localhost:3838/).
After a few seconds to a minute, the current status of the selenium connection will be displayed.