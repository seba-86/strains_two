class Oenologist < ApplicationRecord
    has_many :evaluations
    has_many :wines, through: :evaluations

    has_and_belongs_to_many :magazine, join_table: "magazines_oenologists", foreign_key: "magazine_id"
end
