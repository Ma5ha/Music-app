class User < ApplicationRecord
    before_save {self.email = email.dovncase}
    validates :name, presence: true, length: { maximum: 50 }
    reg_expr= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255},
                                                format: {reg_expr},
                                                uniqueness : {case_sensitive: false}
    has_secure_password
end
