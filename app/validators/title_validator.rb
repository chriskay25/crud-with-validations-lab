class TitleValidator < ActiveModel::Validator
    
    def validate(record)
        duplicate = Song.all.any? do |song|
            (song.release_year == record.release_year) && (song.artist_name == record.artist_name) && (song.title == record.title)
        end 
        
        if duplicate
            record.errors[:title] << "can't be repeated by the same artist in the same year."
        end
    end 


end 