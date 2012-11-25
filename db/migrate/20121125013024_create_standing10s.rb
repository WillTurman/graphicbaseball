class CreateStanding10s < ActiveRecord::Migration
  def change
    create_table :standing10s do |t|
 	  
 	  t.integer :arizona 
      t.integer :atlanta 
      t.integer :baltimore 
      t.integer :boston 
      t.integer :chicagocubs 
      t.integer :chicagosox 
      t.integer	:cincinnati 
      t.integer :cleveland 
      t.integer :colorado 
      t.integer :detroit 
      t.integer :florida 
      t.integer :houston 
      t.integer :kansascity 
      t.integer	:laangels 
      t.integer	:ladodgers 
      t.integer :milwaukee 
      t.integer :minnesota 
      t.integer :nymets 
      t.integer :nyyankees 
      t.integer :oakland 
      t.integer :philadelphia 
      t.integer :pittsburgh 
      t.integer :sandiego 
      t.integer :sanfrancisco 
      t.integer :seattle 
      t.integer :stlouis 
      t.integer :tampabay 
      t.integer :texas 
      t.integer :toronto 
      t.integer :washington
    end
  end
end
