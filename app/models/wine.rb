class Wine < ApplicationRecord
    has_many :assemblies
    has_many :strains, through: :assemblies, dependent: :destroy

    has_many :evaluations
    has_many :oenologists, through: :evaluations, dependent: :destroy
    
    validates_presence_of :name, on: :create, message: "can't be blank"
    accepts_nested_attributes_for :assemblies, allow_destroy: true
    accepts_nested_attributes_for :evaluations, allow_destroy: true

    scope :asc, -> {order(name: :asc)}
end
