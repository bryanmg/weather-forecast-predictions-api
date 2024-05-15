# frozen_string_literal: true

# I added this dummy data due to any API KEY works to get a valid result
# All the instructions to use a valid API key and replace this functionality are an the README file
module FakeDataOpenWeather
  def self.dummy_data
    # Notice the increase by 1 each day of the 'daily' response in 'temp' to see the diferense in the finish result
    sleep(0.5) # I Added sleep 0.5 seconds to emulate API response time
    {
      'lat' => '33.44',
      'lon' => '-94.04',
      'timezone' => 'America/Chicago',
      'timezone_offset' => '-21_600',
      'daily' => [
        {
          'dt' => '1_618_108_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '275', 'min' => '270.09', 'max' => '280', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        },
        {
          'dt' => '1_618_208_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '276', 'min' => '271', 'max' => '281', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        },
        {
          'dt' => '1_618_308_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '277', 'min' => '272', 'max' => '282', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        },
        {
          'dt' => '1_618_408_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '278', 'min' => '273', 'max' => '283', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        },
        {
          'dt' => '1_618_508_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '279', 'min' => '274', 'max' => '284', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        },
        {
          'dt' => '1_618_608_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '280', 'min' => '275', 'max' => '285', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        },
        {
          'dt' => '1_618_708_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '281', 'min' => '276', 'max' => '286', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        },
        {
          'dt' => '1_618_808_000',
          'sunrise' => '1_618_282_134',
          'sunset' => '1_618_333_901',
          'moonrise' => '1_618_284_960',
          'moonset' => '1_618_339_740',
          'moon_phase' => '0.04',
          'temp' => {
            'day' => '281', 'min' => '277', 'max' => '287', 'night' => '275.09', 'eve' => '279.21', 'morn' => '278.49'
          }
        }
      ]
    }
  end
end
