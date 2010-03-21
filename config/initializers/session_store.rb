# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tut_session',
  :secret      => 'fca6291cec773a5217d0f5b9f992b2000f3fcd090ee89a7b08933d82ec999ac406ed575b09e960e55092ba40490301260874f198ef9b917a0ae89bd628715c53'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
