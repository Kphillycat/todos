class Song < ActiveRecord::Base
	has_many :stories
end
