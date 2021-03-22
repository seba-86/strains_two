class RemoveColumnFromOenologist < ActiveRecord::Migration[6.1]
  def change
    remove_column :oenologists, :writer, :boolean
    remove_column :oenologists, :viewer, :boolean
    remove_column :oenologists, :editor, :boolean
  end
end
