class Profile < ApplicationRecord

  has_many :skills

  accepts_nested_attributes_for :skills, allow_destroy: true

end
