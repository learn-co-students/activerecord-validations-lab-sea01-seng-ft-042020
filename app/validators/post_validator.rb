class PostValidator < ActiveModel::Validator 
    def validate (record)
        if !title.nil? && (!title.include?("You Won't" || "Secret" || "Top" || "Guess")) 
            errors.add(:clickbait, "That is not a clickbait worthy title. Try again.")
        end
    end
end