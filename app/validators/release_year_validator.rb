class ReleaseYearValidator < ActiveModel::Validator

    def validate(record)
        unless record.released == false
            if !record.release_year.present?
                record.errors.add(:release_year, "can not be empty")
            elsif record.release_year > Time.now.year
                record.errors.add(:release_year, "can not be in the future")
            end 
        end 
    end 

end 

# Optional if released is false
# Must not be blank if released is true
# Must be less than or equal to the current year