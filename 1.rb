require "date"

module Validation
    def self.valid_name?(name)
      return false if name.nil? || name.empty? || name.length > 40
      !name.match(/^(?=.{1,30}$)(\p{Lu}\p{Ll}*(-\p{Lu}\p{Ll}*)*)$/).nil?
    end
  
    def self.valid_inn?(inn)
      return false if inn.nil? || inn.empty?
      !inn.match(/\A[A-Z]{2}\d{10}\z/).nil?
    end
  
    def self.after_date?(date)
      return false if date.nil? || !date.is_a?(Date)
      date <= Date.today
    end
  end

name = "-"
if Validation.valid_name?(name)
  puts "The name '#{name}' is valid."
else
  puts "The name '#{name}' is invalid."
end


inn = "AZ1234543456"
if Validation.valid_inn?(inn)
  puts "The INN '#{inn}' is valid."
else
  puts "The INN '#{inn}' is invalid."
end

date = Date.new(2024, 1, 1)
if Validation.after_date?(date)
  puts "#{date} is a valid date."
else
  puts "#{date} is not a valid date."
end