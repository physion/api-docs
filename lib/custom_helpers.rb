module CustomHelpers
  API_ENDPOINTS = {
    "sandbox": "https://lab-services-sandbox.ovation.io/api/v3",
    "production": "https://lab-services.ovation.io/api/v3"
  }
  def set_env_endpoint(env)
    puts API_ENDPOINTS[env]
    config[:api_env_endpoint] = API_ENDPOINTS[env]
    puts config[:api_env_endpoint]
  end
end