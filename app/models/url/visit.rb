class Url::Visit < ApplicationRecord
    belongs_to :url, counter_cache: true
end
