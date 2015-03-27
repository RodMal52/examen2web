class Discussion < ActiveRecord::Base
	validates :name, :author, :description, :subforum_id, presence: true
	has_many :entries, dependent: :destroy
  	belongs_to :subforum
end
