# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wahoojobs_session',
  :secret      => 'd47e4204c1c36cae1daf11cdc2393de7791ee7205e938d028aa856df9bd692cdf322745cc8039cc59f178461bda939f1a47371284bd9ebbffbaf1050f680bef9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
