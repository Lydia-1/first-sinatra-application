class CreateNew < ActiveRecord::Migration
  	def change
	  	create_table :donnees do |t|
	  		t.string :nom
	  		t.string :prenom
	  	end
  end
end
