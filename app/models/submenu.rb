class Submenu < ApplicationRecord
	belongs_to :menu, inverse_of: :submenus
end
