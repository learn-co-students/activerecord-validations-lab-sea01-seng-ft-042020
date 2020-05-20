class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title && record.title.match?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
            record.errors[:title] << "We're only allowed to have clickbatey titles"
        end
    end
end