class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.text :description
      t.float :amount
      t.date :closedate
      t.string :stagename

      t.timestamps null: false
    end
  end
end
