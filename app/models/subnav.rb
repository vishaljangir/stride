class Subnav < ApplicationRecord
	belongs_to :nav, inverse_of: :subnavs
end
