class Post < ActiveRecord::Base
    include(ActiveModel::Validations)
    validates_with(PostValidator)
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid category" }
    validates :clickbait, presence: false
end
