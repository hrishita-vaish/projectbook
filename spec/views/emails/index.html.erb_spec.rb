require 'spec_helper'

describe "emails/index" do
  before(:each) do
    assign(:emails, [
      stub_model(Email,
        :to => "To",
        :from => "From",
        :subject => "Subject",
        :cc => "Cc",
        :bcc => "Bcc",
        :body => "MyText",
        :project_id => "Project"
      ),
      stub_model(Email,
        :to => "To",
        :from => "From",
        :subject => "Subject",
        :cc => "Cc",
        :bcc => "Bcc",
        :body => "MyText",
        :project_id => "Project"
      )
    ])
  end

  it "renders a list of emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To".to_s, :count => 2
    assert_select "tr>td", :text => "From".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Cc".to_s, :count => 2
    assert_select "tr>td", :text => "Bcc".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Project".to_s, :count => 2
  end
end
