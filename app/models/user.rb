class User < ActiveRecord::Base
  attr_accessible :email, :fullname, :nickname, :uid

  has_and_belongs_to_many :events

  def self.from_omniauth(auth)
    where(uid: auth["uid"].to_s).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.email = auth["info"]["email"]
      user.nickname = auth["info"]["nickname"]
      user.fullname = auth["info"]["name"]
    end
  end

end
