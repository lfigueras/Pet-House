class Medical < ApplicationRecord
    belongs_to :user, optional: true
end
