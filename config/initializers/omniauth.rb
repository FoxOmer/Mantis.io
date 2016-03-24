OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '1052352113540-ujf2sg4lhdk6rhl8h2413dqlf8isb8ud.apps.googleusercontent.com', 'n88lipiaNcfXgSw6ioTi2UBR', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

#OAuth
# client key - 1052352113540-ujf2sg4lhdk6rhl8h2413dqlf8isb8ud.apps.googleusercontent.com
# client secert - n88lipiaNcfXgSw6ioTi2UBR

# API Key
# API key = AIzaSyDypDGL0PO7EPWuk0W79otz2fEfGqP9OhQ