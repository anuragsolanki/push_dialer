# Override your default settings for the Production environment here.
# 
# Example:
#   configatron.file.storage = :s3

# production (delivery):
  configatron.apn.passphrase = 'pushchat'
  configatron.apn.host = 'gateway.push.apple.com'
  configatron.apn.cert = File.join(Rails.root, 'config', 'apple_push_notification_production.pem')

# production (feedback):
  configatron.apn.passphrase = 'pushchat'
  configatron.apn.feedback.host = 'feedback.push.apple.com'
  configatron.apn.feedback.cert = File.join(Rails.root, 'config', 'apple_push_notification_production.pem')
