class Magazine < ApplicationRecord
    has_many :works
    has_many :oeanologists, through: :works
end
