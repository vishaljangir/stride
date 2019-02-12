class Menu < ApplicationRecord
	has_many :sub_menus, dependent: :destroy, inverse_of: :menu
	
	accepts_nested_attributes_for :sub_menus, :allow_destroy => true, reject_if: :all_blank

  	validates_associated :sub_menus
end
