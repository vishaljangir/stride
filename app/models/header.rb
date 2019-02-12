class Header < ApplicationRecord
	has_one_attached :image

	has_many :navs, dependent: :destroy, inverse_of: :header
	
	accepts_nested_attributes_for :navs, :allow_destroy => true, reject_if: :all_blank

  	validates_associated :navs

	
end
