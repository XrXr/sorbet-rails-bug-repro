# typed: strong
module Blog
  class Comment < ApplicationRecord
    belongs_to :article
  end
end
