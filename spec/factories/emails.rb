# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :email do
    to "MyString"
    from "MyString"
    subject "MyString"
    cc "MyString"
    bcc "MyString"
    body "MyText"
    project_id "MyString"
  end
end
