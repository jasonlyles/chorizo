# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_chorizo_session',
  :secret      => '7c9149dc1ea284df7c7ca81f573595d3629b7622717ef563d10f95adb4363a528b681afa69251b0e65cf4b7eef2519f73fe7f0a2412d146f31b7735ffce6390f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
