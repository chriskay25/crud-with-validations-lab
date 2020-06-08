class Song < ApplicationRecord
    include ActiveModel::Validations

    validates :title, :artist_name, presence: true
    validates :released, inclusion: { in: [true, false] }
    validates_with TitleValidator
    validates_with ReleaseYearValidator 

end
