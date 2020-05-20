class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 10 }
    validates :summary, length: { maximum: 100 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    validate :title_does_not_contain_clickbait?

    CLICK_BAIT = ["Won't Believe", "Secret", "Top", "Guess"]

    def title_does_not_contain_clickbait?
        if !title.nil? && !title.include?(CLICK_BAIT[0] || CLICK_BAIT[1] || CLICK_BAIT[2] || CLICK_BAIT[3] )
            errors.add(:title, "looks like clickbait")
        end
    end
end
