# README

## Prerequisites
Ruby v3.1
Rails 7.1


## FOR THE REVIEW PROCESS [How to use locally]
> Clone this repository
> Run ```bundle install```
> Run the server locally: ```rails server```
> Call the endpoint ```[GET] '/api/v1/weather_forecasts'``` with your preferred client. The cURL command should look as follows (the 'city_name' parameter is required):
    ``` curl --location http://127.0.0.1:3000/api/v1/weather_forecasts?city_name=monterr ```

## Testing
> Clone this repository
> Run ```bundle install```
> You can check if everything is working fine by running the test suite: ```rails test```

## NOTES for the reviewer
* I added a ```FakeDataOpenWeather.dummy_data``` module (I left some important notes there too) due to an invalid API Key error when fetching information from the https://openweathermap.org/ API. The error message is:
``` JSON 
{
  "cod": 401,
  "message": "Invalid API key. Please see https://openweathermap.org/faq#error401 for more info."
} 
```
So, the forecast data will always be the same for all cities you follow.

* I tried with several API Keys, including those you shared with me and some others I created, but the error persisted every time (it seems like a payment is required to use it).

* If you have a valid API Key and want to test this project, please export it as an environment variable and uncomment some code lines with the title 'uncomment this line' in the file ```./app/clients/open_weathermap_client.rb``` by setting an environment variable with ```export OPEN_WEATHER_FORECAST_API_KEY="your-api-key-here"```

* To simulate the HTTP request response time, I added a ```sleep(0.5)``` function in each call to the dummy data to make it a little more realistic.

* I hope this issue with the API Key doesn't impact the final evaluation.

* All the API keys I tried were:
    Yours: 
    a5a47c18197737e8eeca634cd6acb581
    fce130528c880e622fefde5bad9587e5
    0f0d1c45d10a085ac3be5dc6b4081476
    e1a53fec9c02a9055aa46a1ddb8bb525

## Contact info
If you have any doubts, please contact me at iam.el.bryan1@gmail.com

### Database
> This application does not require a database.

## Deployment 
> This application does not have a testing deployment yet.