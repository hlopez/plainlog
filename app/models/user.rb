class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password_hash, :password_salt

  def self.authenticate(email, password_hash)
    user = self.find_by_email(email)
    if user && user.password_hash == password_hash
      return user
    else
      return nil
    end
  end
end
