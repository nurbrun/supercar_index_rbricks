class Make < ActiveRecord::Base
  belongs_to :supercar
  has_one :rank
  acts_as_taggable
  acts_as_taggable_on :tags, :name
  validates_presence_of :tag_list, :on => :create
end
