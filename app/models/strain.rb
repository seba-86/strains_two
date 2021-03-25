class Strain < ApplicationRecord
    has_many :asseblies
    has_many :wines, through: :assemblies
    
    validates_uniqueness_of :name, on: :create

end
