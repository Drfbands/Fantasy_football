class Day < ActiveRecord::Base
	has_many :things 
	has_many :kings
end
