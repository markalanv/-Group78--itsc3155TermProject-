OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '94296446776-q3cuiv1nd7gitr264v6bi062n5bmo3b0.apps.googleusercontent.com', '6uXO0sOPbBDfmdgrx6jsx2A9', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end