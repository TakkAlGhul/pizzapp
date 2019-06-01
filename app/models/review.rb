class Review < ApplicationRecord
    belongs_to :pizza
    belongs_to :user
end
