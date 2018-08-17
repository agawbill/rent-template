require 'carrierwave/orm/activerecord'
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'


CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'Google',
    google_storage_access_key_id: 'GOOGJZG7AVE3UAW4AT2KFZ3G',
    google_storage_secret_access_key: 'ePvJMVZ51603ooVzCgyqG/ehTM7SEjwIWdj2BIhd'
  }
  config.fog_directory = 'group-project-212323.appspot.com'
end
