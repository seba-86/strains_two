class Oenologist < ApplicationRecord
    has_many :evaluations
    has_many :wines, through: :evaluations

    has_many :jobs
    has_many :magazines, through: :jobs, dependent: :destroy
    accepts_nested_attributes_for :jobs,allow_destroy: true

    scope :order_age, -> {order(age: :asc)}

    
end
