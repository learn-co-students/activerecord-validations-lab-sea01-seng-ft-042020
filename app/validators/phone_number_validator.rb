class PhoneNumberValidator < ActiveModel::Validator 
    def validate(record)
        unless record.phone_number.length == 10
            record.errors[:phone_number] << "Invalid Phone Number"
        end
    end
end