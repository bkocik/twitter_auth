# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twitter_auth_session',
  :secret      => '3d2249a7e5ab1267481d0a04d7224d799cca55878d705f135ea05c6d789e782eff82fa302c33bfe9a1e6d486d24db204b6136ace711577e032eab2d1bdbf4749'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
