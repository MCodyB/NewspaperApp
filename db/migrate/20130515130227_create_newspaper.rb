class CreateNewspaper < ActiveRecord::Migration
  def change
    create_table :newspapers do |t|
      t.timestamps
      t.string :editor
      t.string :title
    end
  end
end
