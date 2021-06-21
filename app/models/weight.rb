class Weight < ApplicationRecord
   belongs_to :user

   validates :value, presence: true
   validates :input_time, presence: true
end
