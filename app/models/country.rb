class Country < ActiveRecord::Base
  belongs_to :supercar
  acts_as_taggable
  acts_as_taggable_on :tags
end
