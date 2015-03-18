class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.references :project, index: true, null: false
      t.string :title, null: false
      t.boolean :done, null: false, default: false

      t.timestamps
    end
  end
end
