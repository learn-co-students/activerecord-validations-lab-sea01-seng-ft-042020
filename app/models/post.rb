class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    validates_with TitleValidator
    # def clickbait_titles
    #     unless self.title.include? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
    #         errors[:title] << "Not clickbait-y enough!"
    #     end

    # end
end
