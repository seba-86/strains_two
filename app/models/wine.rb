class Wine < ApplicationRecord
    has_many :assemblies
    has_many :strains, through: :assemblies, dependent: :destroy

    has_many :notes
    has_many :oenologists, through: :notes
    validates_presence_of :name, on: :create, message: "can't be blank"
    accepts_nested_attributes_for :assemblies, allow_destroy: true
    accepts_nested_attributes_for :notes, allow_destroy: true

    scope :asc, -> {order(name: :asc)}
end
