class Fullpost < ActiveRecord::Base
validates_presence_of :body, :title, :author
validates :tag, acceptance: { accept: 'Food' }, acceptance: { accept: 'DIY' }, acceptance: { accept: 'Vidoes' }, acceptance: { accept: 'News' }
end
