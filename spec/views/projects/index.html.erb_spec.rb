require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :project_id => "Project",
        :name => "Name",
        :status => "Status",
        :sponsor => "Sponsor",
        :cc => "Cc",
        :coordinator => "Coordinator",
        :backup_coordinator => "Backup Coordinator",
        :ci_status => "Ci Status",
        :office_address => "MyText",
        :url => "Url",
        :pid => "Pid",
        :charge_code => "Charge Code"
      ),
      stub_model(Project,
        :project_id => "Project",
        :name => "Name",
        :status => "Status",
        :sponsor => "Sponsor",
        :cc => "Cc",
        :coordinator => "Coordinator",
        :backup_coordinator => "Backup Coordinator",
        :ci_status => "Ci Status",
        :office_address => "MyText",
        :url => "Url",
        :pid => "Pid",
        :charge_code => "Charge Code"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Project".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Sponsor".to_s, :count => 2
    assert_select "tr>td", :text => "Cc".to_s, :count => 2
    assert_select "tr>td", :text => "Coordinator".to_s, :count => 2
    assert_select "tr>td", :text => "Backup Coordinator".to_s, :count => 2
    assert_select "tr>td", :text => "Ci Status".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Pid".to_s, :count => 2
    assert_select "tr>td", :text => "Charge Code".to_s, :count => 2
  end
end
