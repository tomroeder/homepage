class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content

      t.timestamps
    end
    add_index :microposts, [:created_at]
  end
end
