class CreateEvaluations < ActiveRecord::Migration[6.1]
  def change
    create_table :evaluations do |t|
      t.integer :note_oenologist
      t.references :wine, null: false, foreign_key: true
      t.references :oenologist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
