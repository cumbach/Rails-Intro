class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  def as_json(options = {})
    { name: name, email: email }
  end

  has_many :contacts,
  class_name: "Contact",
  primary_key: :id,
  foreign_key: :user_id

  has_many :contact_shares,
    class_name: "ContactShare",
    foreign_key: :user_id,
    primary_key: :id
end
