class CarModel < ActiveRecord::Base
  belongs_to :supercar
  acts_as_taggable
  acts_as_taggable_on :tags

  validates_presence_of :tag_list, :on => :create

end
