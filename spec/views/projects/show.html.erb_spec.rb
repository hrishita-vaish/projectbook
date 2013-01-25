require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Project/)
    rendered.should match(/Name/)
    rendered.should match(/Status/)
    rendered.should match(/Sponsor/)
    rendered.should match(/Cc/)
    rendered.should match(/Coordinator/)
    rendered.should match(/Backup Coordinator/)
    rendered.should match(/Ci Status/)
    rendered.should match(/MyText/)
    rendered.should match(/Url/)
    rendered.should match(/Pid/)
    rendered.should match(/Charge Code/)
  end
end
