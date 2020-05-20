class PostValidator < ActiveModel::Validator
    def validate(post)
        if post.title != nil
            unless post.title.match?(/Won't Believe/)
                post.errors[:clickbait] << "No Clickbait Titles 
                Allowed!"
            end
        end

    
    end 
end
# Finally, add a custom validator to Post that ensures the title is sufficiently clickbait-y. If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should add a validation.