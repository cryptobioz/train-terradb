require 'train-terradb/connection'

module TrainPlugins
	module TerraDB
		class Transport < Train.plugin(1)
			name 'terradb'
	
			option :server, default: ENV['TERRADB_SERVER']

			def connection(_instance_opts = nil)
				@connection ||= TrainPlugins::TerraDB::Connection.new(@options)
			end
		end
	end
end
