class CreateOenologists < ActiveRecord::Migration[6.1]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.boolean :writer
      t.boolean :viewer
      t.boolean :editor

      t.timestamps
    end
  end
end
