class Building < ApplicationRecord

	def self.read_files
		file = File.read('/Users/gakouri/Desktop/manhattanbrooklyn.json')
		@data_hash = JSON.parse(file)
	end

	def self.add_to_database
		@data_hash["data"].each do |address|
			Building.create(address: build_address(address))
		end
	end


	def self.build_address(arr)
		[([arr[9],arr[10]].join(" ")), arr[8], "NEW YORK", arr[11]].join(", ")
	end

# add rating to building instead of owner

end
