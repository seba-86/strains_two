class Oenologist < ApplicationRecord
    has_many :evaluations
    has_many :wines, through: :evaluations

    has_many :works
    has_many :magazines, through: :works, dependent: :destroy
    accepts_nested_attributes_for :works,allow_destroy: true
end
