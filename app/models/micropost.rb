class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user

  validates :content, :length => {
  	:minimum =>1,
  	:maximum =>120,
  	:too_short => "must make yo post longer yo",
  	:too_long =>  "must make you post shorter yo"
  }
end
