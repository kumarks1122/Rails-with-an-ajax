class CreateWholesales < ActiveRecord::Migration
	def change
		create_table :wholesales do |t|
			t.integer :user_id
			t.integer :retailer_id
			t.timestamps null: false
		end
		add_index :wholesales,[:user_id,:retailer_id],:unique=>true
	end
end
