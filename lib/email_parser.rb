# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailAddressParser
  attr_accessor :email
  @addresses = []
  def initialize(email)
    @emails = email
  end

  def parse
  emails = @emails.split(" ")
  emails.map do |x|
    x.include?(",") ? @addresses << x.gsub(",","") : @addresses << x
  end

  @addresses

  end

end
