# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
# Paperclip::Attachment.default_options[:storage] = :fog
# Paperclip::Attachment.default_options[:fog_credentials] = { provider: "Local", local_root: "#{Rails.root}/public/upload_images"}
# Paperclip::Attachment.default_options[:fog_directory] = ""
# Paperclip::Attachment.default_options[:fog_host] = "http://localhost:3000/upload_images"