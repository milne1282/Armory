# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_armory_session',
  :secret      => '58e1c41b08cafa3f5c813aedfe0cc4a271ac69516c1a5101ee4026f21a2d0717dc03cc7092c9b8f5cfe24ff38e48f723ec94b8f6924a875efbffae983f1c1f20'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
