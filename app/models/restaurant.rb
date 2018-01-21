class Restaurant < ApplicationRecord
		has_and_belongs_to_many :dishes
		self.inheritance_column = :_type_disabled
end