class Director < ApplicationRecord
# == Schema Information

validates :name, :presence => true, :uniqueness => { :scope => :dob }
# - dob: no rules
# - bio: no rules
# - image_url: no rules


end
