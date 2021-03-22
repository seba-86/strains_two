class Oenologist < ApplicationRecord
    has_many :evaluations
    has_many :wines, through: :evaluations

    has_many :magazines
end
