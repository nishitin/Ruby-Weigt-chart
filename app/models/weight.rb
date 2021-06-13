class Weight < ApplicationRecord
   belongs_to :user

   validates :value, presence: true
end
