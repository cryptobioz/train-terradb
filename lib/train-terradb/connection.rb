require 'train-terradb/platform'
require 'train-terradb/terradb'

module TrainPlugins
	module TerraDB
		class Connection < Train::Plugins::Transport::BaseConnection
			include TrainPlugins::TerraDB::Platform

			def initialize(options)
				@opts = options
				super(options)
				@client = ::TerraDB.new(options[:server])
			end

			def local?
				false
			end

			def uri
				'terradb://'
			end

			def terradb
				@client
			end
		end
	end
end
