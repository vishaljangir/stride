class Nav < ApplicationRecord
	belongs_to :header, inverse_of: :navs
	

	has_many :subnavs, dependent: :destroy, inverse_of: :nav
	
	accepts_nested_attributes_for :subnavs, :allow_destroy => true, reject_if: :all_blank

  	validates_associated :subnavs
end
