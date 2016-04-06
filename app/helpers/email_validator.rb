class EmailValidator < ActiveModel::Validator
  
  def validate(record)
    valid_subdomains = ["@zendesk.com","@zopim.com","@bime.io"]
    unless valid_subdomains.any? { |subdomain| record.email.include?(subdomain) } then record.errors[:email] << "Use your company email." end
  end
end