import scrapy
 
class BootstrapTableSpider(scrapy.Spider):
    name = "weather_table"
 
    def start_requests(self):
        urls = [
            'http://glcyyz01vp.clcillinois.edu/web/users/epriest/',
        ]
        for url in urls:
            yield scrapy.Request(url=url, callback=self.parse)
 
    def parse(self, response):
        table = response.xpath('//table')
        rows = table.xpath('//tr')
        yield {
            'temperature':    float(rows[0].xpath('td//text()')[1].extract().split(' ')[0]), 'max_temp': float(rows[0].xpath('td//text()')[3].extract().split(' ')[0]),
            'dew_point':      float(rows[1].xpath('td//text()')[1].extract().split(' ')[0]), 'min_temp': float(rows[1].xpath('td//text()')[3].extract().split(' ')[0]),
            'rel_humidity':   float(rows[2].xpath('td//text()')[1].extract().split(' ')[0].split('%')[0]),  'peak_wind_speed':   float(rows[2].xpath('td//text()')[3].extract().split(' ')[0]),
            'sea_level_pressure': float(rows[3].xpath('td//text()')[1].extract().split(' ')[0]), 'sunrise': rows[4].xpath('td//text()')[3].extract().split(' ')[0],
            'wind_speed':     float(rows[5].xpath('td//text()')[1].extract().split(' ')[0]), 'sunset':     rows[5].xpath('td//text()')[3].extract().split(' ')[0],
            'wind_chill':     float(rows[6].xpath('td//text()')[1].extract().split(' ')[0]), 'moonrise':   rows[6].xpath('td//text()')[3].extract(),
            'heat_index':     float(rows[7].xpath('td//text()')[1].extract().split(' ')[0]), 'moonset':              rows[7].xpath('td//text()')[5].extract(),
            'daily_rainfall': float(rows[8].xpath('td//text()')[1].extract().split(' ')[0]), 'moon_phase': rows[8].xpath('td//text()')[3].extract(),
            'daylight_hours':       rows[9].xpath('td//text()')[1].extract().split(' ')[0],  'solar_radiation':  int(rows[9].xpath('td//text()')[3].extract().split(' ')[0]),
            'wind_bearing':     int(rows[4].xpath('td//text()')[1].extract().split('°')[0]), 'monthly_rainfall': float(rows[3].xpath('td//text()')[3].extract().split(' ')[0]) 
        }


#°
# 'moonset':    rows[7].xpath('td//text()')[3].extract(),