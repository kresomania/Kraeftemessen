migration 1, :add_column_short_to_country do

  up do
    modify_table :countries do
	  add_column :short, String, :size => 3
	end
  end

  down do
    modify_table :countries do
	  drop_column :short
	end
  end

end
