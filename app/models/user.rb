class User < ApplicationRecord
    before_save {self.email = email.downcase}
    validates :name, presence: true, length: { maximum: 50 }
    reg_expr= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255},
                                                format: {with:reg_expr},
                                                uniqueness: true
    has_secure_password
end
