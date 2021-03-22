class Magazine < ApplicationRecord
    has_and_belongs_to_many :oenologist, join_table: "magazines_oenologists", foreign_key: "oenologist_id"
end
