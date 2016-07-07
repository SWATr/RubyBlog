class Fullpost < ActiveRecord::Base
validates_presence_of :body, :title, :author
#validates_acceptance_of :tag           
#                       :accept => "Food"
						

end
