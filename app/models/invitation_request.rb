class InvitationRequest < ActiveRecord::Base
  attr_accessible :emails

  validates :email, presence: true
end
