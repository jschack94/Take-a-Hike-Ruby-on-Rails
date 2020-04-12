Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '210984087019115', 'e4b6351807ac1d99a9d30d2c1b7b05e7'
  end