require 'minitest/autorun' 
require_relative '../task2/Validation'
require_relative '../task2/Error'

class ValidationTest < Minitest::Test 
  include Error

  # Тестування дійсних імен
  ['John Doe', 'Mary Ann', 'Jack Loaf', 'Jack'].each_with_index do |name, index|
    define_method("test_valid_name_#{index + 1}") do
      assert(Validation.valid_name?(name))
    end
  end

  # Тестування недійсних імен
  ['John123', 'John-Doe', nil].each_with_index do |name, index|
    define_method("test_invalid_name_#{index + 1}") do
      refute(Validation.valid_name?(name)) # Змінено на refute, оскільки ми очікуємо недійсних імен
    end
  end

  # Тестування дійсних ID
  ['AA1234567890', 'AB0000000000'].each_with_index do |name, index|
    define_method("test_valid_id_#{index + 1}") do
      assert(Validation.valid_id?(name))
    end
  end

  # Тестування недійсних ID
  ['A12345678901', 'AB00000000001', '123456789012', nil].each_with_index do |name, index|
    define_method("test_invalid_id_#{index + 1}") do
      refute(Validation.valid_id?(name)) # Змінено на refute, оскільки ми очікуємо недійсних ID
    end
  end

  # Тестування дійсних дат
  ['2022-06-30', '2000-01-01', '2023-06-30'].each_with_index do |name, index|
    define_method("test_valid_date_#{index + 1}") do
      assert(Validation.valid_date?(name))
    end
  end

  # Тестування недійсних дат
  ['2030-01-01', '2022-06-30T10:30:00', nil].each_with_index do |name, index|
    define_method("test_invalid_date_#{index + 1}") do
      refute(Validation.valid_date?(name)) # Змінено на refute, оскільки ми очікуємо недійсних дат
    end
  end
end