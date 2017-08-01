class Actor < ApplicationRecord
# == Schema Information
#
# Table name: actors


validates :name, :presence => true, :uniqueness => { :scope => :dob }
# - dob: no rules
# - bio: no rules
# - image_url: no rules

has_many(:characters, :class_name => "Character", :foreign_key => "actor_id")

has_many(:movies, :through => :characters )

end
