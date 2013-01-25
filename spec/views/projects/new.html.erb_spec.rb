require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :project_id => "MyString",
      :name => "MyString",
      :status => "MyString",
      :sponsor => "MyString",
      :cc => "MyString",
      :coordinator => "MyString",
      :backup_coordinator => "MyString",
      :ci_status => "MyString",
      :office_address => "MyText",
      :url => "MyString",
      :pid => "MyString",
      :charge_code => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_project_id", :name => "project[project_id]"
      assert_select "input#project_name", :name => "project[name]"
      assert_select "input#project_status", :name => "project[status]"
      assert_select "input#project_sponsor", :name => "project[sponsor]"
      assert_select "input#project_cc", :name => "project[cc]"
      assert_select "input#project_coordinator", :name => "project[coordinator]"
      assert_select "input#project_backup_coordinator", :name => "project[backup_coordinator]"
      assert_select "input#project_ci_status", :name => "project[ci_status]"
      assert_select "textarea#project_office_address", :name => "project[office_address]"
      assert_select "input#project_url", :name => "project[url]"
      assert_select "input#project_pid", :name => "project[pid]"
      assert_select "input#project_charge_code", :name => "project[charge_code]"
    end
  end
end
