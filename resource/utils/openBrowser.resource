*** Settings ***
Resource    ../../base.resource

*** Keywords ***
Abrir Browser
    Open Browser
    ...  url=http://www.automationpractice.pl/index.php
    ...  browser=chromium
    # ...   headless=True