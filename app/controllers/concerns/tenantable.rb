module Tenantable
  extend ActiveSupport::Concern
   
  included do
    scope :for_author, -> (author) { where(tenant_id: author.id) }

    def set_author(slug)
      self.tenant_id = Author.find_by!(slug: slug).id
    end
  end
end

# Usage:
# author = Author.find(1)
# Article.for_author(author)
