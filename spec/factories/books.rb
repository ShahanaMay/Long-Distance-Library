# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :book do
    title "MyString"
    author_last_name "MyString"
    author_first_name "MyString"
    isbn "MyString"
    illustrator "MyString"
  end
end
