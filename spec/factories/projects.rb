# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    project_id "MyString"
    name "MyString"
    status "MyString"
    sponsor "MyString"
    cc "MyString"
    coordinator "MyString"
    backup_coordinator "MyString"
    created_on "2013-01-24"
    last_action "2013-01-24"
    ci_status "MyString"
    office_address "MyText"
    url "MyString"
    pid "MyString"
    charge_code "MyString"
  end
end
