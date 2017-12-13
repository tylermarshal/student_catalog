class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :escription
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.references :students, foreign_key: true
    end
  end
end
