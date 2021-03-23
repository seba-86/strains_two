class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.boolean :writer
      t.boolean :viewer
      t.boolean :editor
      t.references :oenologist, null: false, foreign_key: true
      t.references :magazine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
