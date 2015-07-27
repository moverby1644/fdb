class CreateEnds < ActiveRecord::Migration
  def change
    create_table :ends do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
