class User < ApplicationRecord
    has_secure_password


    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :name, presence: true, length: {minimum:3, maximum:50}
    validates :password, presence: true, length:{minimum: 5,maximum: 255}
    validates :email, presence: true, length:{maximum: 255},
                                      format:{with: VALID_EMAIL_REGEX},
                                      uniqueness:{case_sensitive: true}
    
    
    has_many :contacts
end
