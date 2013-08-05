class Profile < ActiveRecord::Base
	attr_accessible :full_name, :address, :motto, :phone, :email, :website, :company_id
									:phone_other, :picture
	belongs_to :company
	has_attach_file :picture,
									styles: {
										:original => "800x800>",
  										:large => "500x500>", 
  										:medium => "300x300>",
  										:small => "125x125>", 
  										:thumb => "64x64>" 
  									}, 
  									:default_url => "rails.png",
  									:size => {
  										:less_than => 1.megabytes
  									}
									}

end