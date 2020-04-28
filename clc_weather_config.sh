#!/bin/sh

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_T/config -m \
    '{
     "name": "clc_temperature",
     "device_class": "temperature",
     "state_topic":  "homeassistant/sensor/clc_weather/state",
     "unit_of_measurement": "°F",
     "value_template": "{{value_json.temperature}}"
     }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_H/config -m \
    '{
      "name": "clc_humidity",
      "device_class": "humidity", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "%", 
      "value_template": "{{value_json.rel_humidity}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_MT/config -m \
    '{
      "name": "clc_max_temp",
      "device_class": "temperature", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "°F", 
      "value_template": "{{value_json.max_temp}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_DP/config -m \
    '{
      "name": "clc_dew_point",
      "device_class": "temperature", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "°F", 
      "value_template": "{{value_json.dew_point}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_MINT/config -m \
    '{
      "name": "clc_min_temp",
      "device_class": "temperature", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "°F", 
      "value_template": "{{value_json.min_temp}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_WC/config -m \
    '{
      "name": "clc_wind_chill",
      "device_class": "temperature", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "°F", 
      "value_template": "{{value_json.wind_chill}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_HI/config -m \
    '{
      "name": "clc_heat_index",
      "device_class": "temperature", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "°F", 
      "value_template": "{{value_json.heat_index}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_PWS/config -m \
    '{
      "name": "clc_peak_wind_speed",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "knots", 
      "value_template": "{{value_json.peak_wind_speed}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_WB/config -m \
    '{
      "name": "clc_wind_bearing",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "°", 
      "value_template": "{{value_json.wind_bearing}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_WS/config -m \
    '{
      "name": "clc_wind_speed",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "knots", 
      "value_template": "{{value_json.wind_speed}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_P/config -m \
    '{
      "name": "clc_pressure",
      "device_class": "pressure", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "mB", 
      "value_template": "{{value_json.sea_level_pressure}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_I/config -m \
    '{
      "name": "clc_illuminance",
      "device_class": "illuminance", 
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "W/m2", 
      "value_template": "{{value_json.solar_radiation}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_SR/config -m \
    '{
      "name": "clc_sunrise",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "value_template": "{{value_json.sunrise}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_SS/config -m \
    '{
      "name": "clc_sunset",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "value_template": "{{value_json.sunset}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_MR/config -m \
    '{
      "name": "clc_moonrise",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "value_template": "{{value_json.moonrise}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_MS/config -m \
    '{
      "name": "clc_moonset",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "value_template": "{{value_json.moonset}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_MP/config -m \
    '{
      "name": "clc_moon_phase",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "value_template": "{{value_json.moon_phase}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_DH/config -m \
    '{
      "name": "clc_daylight_hours",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "hours", 
      "value_template": "{{value_json.daylight_hours}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_MRN/config -m \
    '{
      "name": "clc_monthly_rainfall",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "inches", 
      "value_template": "{{value_json.monthly_rainfall}}"
    }'

mosquitto_pub -r -h 192.168.111.250 -p 1883 -t homeassistant/sensor/clc_weather_DR/config -m \
    '{
      "name": "clc_daily_rainfall",
      "state_topic":  "homeassistant/sensor/clc_weather/state",
      "unit_of_measurement": "inches", 
      "value_template": "{{value_json.daily_rainfall}}"
    }'

# 20 entries
#  "temperature" : 44.0,
#  "max_temp" : 45.4,
#  "dew_point" : 37.6,
#  "min_temp" : 36.7,
#  "rel_humidity" : 78.0,
#  "peak_wind_speed" : 10.4,
#  "sea_level_pressure" : 1010.13,
#  "sunrise" : "6:00",
#  "wind_speed" : 2.6,
#  "sunset" : "7:41",
#  "wind_chill" : 42.9,
#  "moonrise" : "6:10 AM",
#  "heat_index" : 44.0,
#  "moonset" : "7:16 PM",
#  "daily_rainfall" : 0.05,
#  "moon_phase" : "New moon",
#  "daylight_hours" : "13:41",
#  "solar_radiation" : 265,
#  "wind_bearing" : 112,
#  "monthly_rainfall" : 1.21

#  Device Class
#  The way these sensors are displayed in the frontend can be modified in the customize section. The following device classes are supported for sensors:
#  
#  None: Generic sensor. This is the default and doesn’t need to be set.
#  battery: Percentage of battery that is left.
#  humidity: Percentage of humidity in the air.
#  illuminance: The current light level in lx or lm.
#  signal_strength: Signal strength in dB or dBm.
#  temperature: Temperature in °C or °F.
#  power: Power in W or kW.
#  pressure: Pressure in hPa or mbar.
#  timestamp: Datetime object or timestamp string.
