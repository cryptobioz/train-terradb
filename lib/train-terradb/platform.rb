module TrainPlugins::TerraDB
	module Platform
		def platform
			Train::Platforms.name('terradb')
			force_platform!('terradb', release: TrainPlugins::TerraDB::VERSION)
		end
	end
end
