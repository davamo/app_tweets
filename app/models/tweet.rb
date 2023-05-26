class Tweet < ApplicationRecord
    include Pagy::Frontend
    pg_search_scope :search_full_text,
    against: {
        email: 'A',
        id: 'B',
    }
end
