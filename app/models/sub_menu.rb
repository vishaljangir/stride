class SubMenu < ApplicationRecord
	
	belongs_to :menu, inverse_of: :sub_menus
end
