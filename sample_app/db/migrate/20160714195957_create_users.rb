class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
    	t.string "email", :limit => 50, :null => false
    	t.column "password", :string, :limit => 30, :null => false
    	#:defauls => 
    	#:precision =>
    	#:scale => 

    	t.timestamps #timestamps for when the user is first created or updated
    end
  end

  def down
  	drop_table :users
  end
end


#data types available other than string:
# binary, boolean, data, decimal, float, integer, text, time
#the reason you want to do this inside of rails instead of doing 
#it in the data base itself bec this will allow us to swich the 
# database if we need 
# also auto incremented ID's 