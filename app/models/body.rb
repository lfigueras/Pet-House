class Body < ApplicationRecord
    belongs_to :user, optional: true
end
