class CreateRoles < ActiveRecord::Migration
	def change
		create_table :roles,:id=>false,:primary_key=>:user_id do |t|
			t.integer :user_id
			t.string :wholeseller,:default=>"0"
			t.string :retailer,:default=>"0"
			t.string :customer,:default=>"0"
			t.timestamps null: false
		end
		add_index :roles , [:user_id]
	end
end
