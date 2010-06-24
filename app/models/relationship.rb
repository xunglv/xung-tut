# == Schema Information
# Schema version: 20100623154503
#
# Table name: relationships
#
#  id          :integer         not null, primary key
#  follower_id :integer
#  followed_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Relationship < ActiveRecord::Base
  attr_accessible :followed_id

  belongs_to :follower, :class_name => "User", :foreign_key => "follower_id"
  belongs_to :followed, :class_name => "User", :foreign_key => "followed_id"

  validates_presence_of :follower_id, :followed_id
end
