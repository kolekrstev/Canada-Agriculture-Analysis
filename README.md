# Canada Agriculture Field Crops Analysis

### Project Title: Field Crop Analysis
### Project Team: Mendell Kwan and Kole Krstev
### Project Overview:
Analyze and visualize insights for Canada Agriculture Field Crops (different types of crops) and Canada Weather Station Data per Province and Agricultural Regions.
**********************************************************************************************************

## Datasets:

#### Weather stations data: 
https://climate.weather.gc.ca/historical_data/search_historic_data_e.html 

**********************************************************************************************************

#### Weather stations Longitude and Latitude data: 
https://www.weatherstats.ca/faq/climate_station.html

**********************************************************************************************************

#### Census Agricultural Regions, Digital Boundary File - 2016 Census: 
https://open.canada.ca/data/en/dataset/c2e864d0-1fdc-42b2-a431-e0bc7f3328b1

Shape File - Census Agricultural Regions Digital Boundary File: 
https://open.canada.ca/data/en/dataset/c2e864d0-1fdc-42b2-a431-e0bc7f3328b1/resource/746ed1a1-54a1-44ce-bcdc-a5607de5d793

Different link for the same file: https://www12.statcan.gc.ca/census-recensement/alternative_alternatif.cfm?l=eng&dispext=zip&teng=lcar000a16a_e.zip&k=%20%20%20%20%203749&loc=http://www12.statcan.gc.ca/census-recensement/2011/geo/bound-limit/files-fichiers/2016/lcar000a16a_e.zip

#### Census Agricultural Regions per Province:
Manitoba - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov46_CARCD-eng.pdf?st=u8Stqe9t
<br/>Saskatchewan - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov47_CARCD-eng.pdf?st=p6kREWUS
<br/>Alberta - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov48_CARCD-eng.pdf?st=Feru88oI
<br/>British Columbia - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov59_CARCD-eng.pdf?st=arbGaQuB
<br/>New Brunswick - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov13_CARCD-eng.pdf?st=D-3pJBOg
<br/>Nova Scotia - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov12_CARCD-eng.pdf?st=HWEf6iin
<br/>Prince Edward Island - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov11_CARCD-eng.pdf?st=kjcV1Mu0
<br/>Newfoundland & Labrador - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov10_CARCD-eng.pdf?st=x_9DATA4
<br/>Ontario - https://www150.statcan.gc.ca/n1/en/pub/95-630-x/2017000/pdf/Prov35_CARCD-eng.pdf?st=dwmL0Idi
<br/>Quebec - https://www150.statcan.gc.ca/n1/pub/95-630-x/2017000/pdf/Prov24_CARCD-eng.pdf


**********************************************************************************************************

#### Crop data: 
https://www150.statcan.gc.ca/t1/tbl1/en/tv.action?pid=3210000201&pickMembers%5B0%5D=3.1&cubeTimeFrame.startYear=2015&cubeTimeFrame.endYear=2019&referencePeriods=20150101%2C20190101

**********************************************************************************************************

#### Soil data: 
https://open.canada.ca/data/en/dataset/8f496e3f-1e54-4dbb-a501-a91eccf616b8

**********************************************************************************************************

#### Historical climate data: 
https://climate.weather.gc.ca/



## Project Milestones:
1. #### - Collect Weather stations location data (_done_)
2. #### - Collect Agricultural Regions data (_done_)
3. #### - Assign Weather stations location per Agricultiral Regions in each Province (_done_)
4. #### - Collect Field Crop data for specific Crop type
      We can download Barley crop data from 2015-2019 period for start. 
      For most crops these are the ONLY Regions for each Province with data:
      Quebec        - Regions 1-11 (out of 14 regions total)
      Ontario       - Regions 1-5 (out of 5 regions total)
      Manitoba      - Regions 1-12 (out of 12 regions total)
      Saskachewan   - Regions 1-20 (terminated - old regions)
                    - New Regions 1-6 (out of 7 regions total)
      Alberta       - Regions 10-70 (equivalent with Regions 1-7 out of 7 total)
      BC            - Regions 1 and 8 (out of 8 regions total)
5. #### - Map Agricultural Regions this specific Crop type is grown 
      (_map the previous item info with our Weather stations Regions data_)
6. #### - Collect Weather Stations data (temp, humidity, percipitation, etc) for these Regions 
      (_using Cyqwin or Wget script_)
7. #### - Pre-process data
8. #### - Analyze and Visualize insights

