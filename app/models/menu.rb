class Menu < ApplicationRecord
	has_many :submenus, dependent: :destroy, inverse_of: :menu
	
	accepts_nested_attributes_for :submenus, :allow_destroy => true, reject_if: :all_blank

  	validates_associated :submenus

  	validates :name, presence: true
	
   
end
