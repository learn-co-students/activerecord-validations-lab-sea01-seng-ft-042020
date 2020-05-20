class TitleValidator < ActiveModel::Validator 

    def validate(record)
        unless !record.title == true
            unless record.title.match? "Won't Believe" || "Secret" || "Top [number]" || "Guess"
                record.errors[:title] << "Not click-baity enough!"
            end
        end
    end
end