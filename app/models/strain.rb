class Strain < ApplicationRecord
    has_many :asseblies
    has_many :wines, through: :assemblies
end
