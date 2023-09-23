# Extracts the subdomain from the request and sets it as the tenant_id.
class SubdomainConstraint
  def self.matches?(request)
    subdomain = request.subdomain
    # You may want to add logic here to handle special subdomains, e.g., 'www'
    subdomain.present? && Author.exists?(slug: subdomain)
  end
end
