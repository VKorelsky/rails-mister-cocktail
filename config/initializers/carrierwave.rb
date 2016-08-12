CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
    :region                => ENV['AWS_REGION']
  }

  config.fog_directory    = ENV['AWS_S3_BUCKET_NAME']
  config.fog_public       = false  # <- Private URLS (with expiration) are generated
end
# app/uploaders/photo_uploader.rb
class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this

  version :standard do
    resize_to_fill 400, 300
  end

  version :thumb do
    resize_to_fill 100, 100
  end
end

