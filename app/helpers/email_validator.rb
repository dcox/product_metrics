class EmailValidator < ActiveModel::Validator

  valid_subdomains = ["@zendesk.com","@zopim.com","@bime.io"]
  
  def validate(record)
    unless valid_subdomains.any? { |subdomain| record.email.include?(subdomain) } then record.errors[:email] << "Use your company email." end
  end
end