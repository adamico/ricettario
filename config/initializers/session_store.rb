# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ricettario_session',
  :secret      => '2023b5e9bace264108eaeade32771b19fbebcf6c33a9b5ff2cd2763c904d30734800642382acc0fd6b5d9d9807e7e23f9943971c6bbe8a898872d2c565b80d19'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
