class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.text :description
      t.string :read_more_link
      t.integer :favourite_count

      t.timestamps null: false
    end
  end
end
