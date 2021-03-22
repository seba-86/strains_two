class Oenologist < ApplicationRecord
    has_many :notes
    has_many :wines, through: :notes
end
