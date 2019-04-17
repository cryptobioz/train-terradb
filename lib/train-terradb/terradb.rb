require 'httparty'
require 'json'

class TerraDB
	include HTTParty

	def initialize(url)
		self.class.base_uri "#{url}/v1"
	end

	def state(name, serial = "")
		endpoint = "/states/#{name}"
		if !serial.nil? && !serial.empty?
			endpoint = "/states/#{name}?serial=#{serial}"
		end
		
		resp = self.class.get(endpoint)
		if resp.code == 200
			JSON.parse(resp.body)
		end
	end
end
