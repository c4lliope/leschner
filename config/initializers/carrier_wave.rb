if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :region                => 'eu-west-2',
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']

    }
    config.fog_directory     =  ENV['S3_BUCKET_NAME']
  end
end

# CarrierWave.configure do |config|
#   config.storage    = :aws
#   config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
#   config.aws_acl    = 'public-read'
#
#   # Optionally define an asset host for configurations that are fronted by a
#   # content host, such as CloudFront.
#   config.asset_host = 'http://leschnerguitars.herokuapp.com'
#
#
#   config.aws_credentials = {
#     access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
#     secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
#   }
#
# end
# end