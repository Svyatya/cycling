class User < ActiveRecord::Base

  geocoded_by :address
  after_validation :geocode
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end



# user has_many :sent_messages, class: 'Message', foreign_key: 'sender_id'
# user has_many :get_messages, class: 'Message', foreign_key: 'receiver_id'
# id | sender_id | receiver_id | text
#