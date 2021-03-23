class Magazine < ApplicationRecord
    has_many :jobs
    has_many :oenologists, through: :jobs
end
