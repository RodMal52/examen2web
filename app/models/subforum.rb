class Subforum < ActiveRecord::Base
	validates :title, presence: true
	has_many :discussions, dependent: :destroy
end
