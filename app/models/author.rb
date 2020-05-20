class Author < ActiveRecord::Base
    validates :name, presence: true
    validates :name , uniqueness: true
    
    include ActiveModel::Validations
        validates_with PhoneNumberValidator
end
