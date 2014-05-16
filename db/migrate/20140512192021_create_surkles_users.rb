class CreateSurklesUsers < ActiveRecord::Migration
  def change
    create_table :surkles_users do |t|
    	t.index :id
			t.references :surkle, :user
      t.timestamps
    end
  end
end
