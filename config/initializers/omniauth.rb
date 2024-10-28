Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_CLIENT_ID'], ENV['GITHUB_CLIENT_SECRET'], 
           scope: "user,repo", 
           path_prefix: ENV['GITHUB_AUTH_URL'],
           provider_ignores_state: true
end
