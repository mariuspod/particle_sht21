require 'rest_client'
require 'metr'
require 'json'

def device_id
  ENV['PARTICLE_DEVICE_ID']
end

def access_token
  ENV['PARTICLE_ACCESS_TOKEN']
end

def variable_names
  ENV['PARTICLE_VARIABLES'].split(',')
end

def particle_base_url
  "https://api.particle.io/v1/devices/#{device_id}"
end

def get_from_particle(variable_name)
  result = RestClient.get("#{particle_base_url}/#{variable_name}?access_token=#{access_token}")
  if result
    JSON.parse(result)["result"]
  else
    0
  end
end

data = {}
variable_names.each do |variable_name|
  value = get_from_particle(variable_name)
  data[variable_name] = value
end

Metr::Base.emit(data)
