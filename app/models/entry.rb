class Entry < ActiveRecord::Base
  validates :author, :content, :discussion_id, presence: true
  belongs_to :discussion
end
