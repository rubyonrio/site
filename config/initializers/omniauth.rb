OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_CLIENT_ID'] || "46ba950dff2844b61828", ENV['GITHUB_CLIENT_SECRET'] || "fc1ad4056752aa015dacf45f391190b66c79ec61"
end