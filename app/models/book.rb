class Book < ActiveRecord::Base

	has_attached_file :image, :styles => { :book_index => "250x350", :book_show => "325x475" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
    has_many :reviews  
	belongs_to :user
	belongs_to :category
end
