class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	 t.string :name
      t.string :email
      t.string :phone
      t.integer :age
      t.string :city
      t.string :email

      t.timestamps
    end
  end
end
