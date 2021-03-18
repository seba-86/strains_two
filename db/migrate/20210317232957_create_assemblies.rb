class CreateAssemblies < ActiveRecord::Migration[6.1]
  def change
    create_table :assemblies do |t|
      t.integer :percentage
      t.references :wine, null: false, foreign_key: true
      t.references :strain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
