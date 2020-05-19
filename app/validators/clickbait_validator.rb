class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record.title != nil
            unless record.title.match?(/Won't/)
                record.errors[:clickbait].push("Clickbait titles are not allowed")
            end
        end
    end
end