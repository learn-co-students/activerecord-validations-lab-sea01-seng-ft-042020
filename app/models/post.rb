class Post < ActiveRecord::Base
    include(ActiveModel::Validations)
    validates(:title, presence: true)
    validates_with(ClickbaitValidator)
    validates(:content, length: {minimum: 25})
    validates(:summary, length: {maximum: 100})
    validates(:category, inclusion: {in: ["Fiction", "Non-Fiction"], message: "%{value} is not a valid category"})
end