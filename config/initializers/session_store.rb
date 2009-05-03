# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_plainlog_session',
  :secret      => '51340f608ac26d22a6cff7789d002a5243be002bd0199adab8e18a4b3aca9d7414cf0620c2fa4a8c4265dac0fdd849e95687e7d06d01123eab894b38c1a65e1d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
