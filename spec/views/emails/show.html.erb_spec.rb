require 'spec_helper'

describe "emails/show" do
  before(:each) do
    @email = assign(:email, stub_model(Email,
      :to => "To",
      :from => "From",
      :subject => "Subject",
      :cc => "Cc",
      :bcc => "Bcc",
      :body => "MyText",
      :project_id => "Project"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To/)
    rendered.should match(/From/)
    rendered.should match(/Subject/)
    rendered.should match(/Cc/)
    rendered.should match(/Bcc/)
    rendered.should match(/MyText/)
    rendered.should match(/Project/)
  end
end
