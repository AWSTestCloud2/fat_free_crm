require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/campaigns/new.html.erb" do
  include CampaignsHelper
  
  before(:each) do
    assigns[:campaign] = stub_model(Campaign,
      :new_record? => true
    )
  end

  it "should render new form" do
    render "/campaigns/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", campaigns_path) do
    end
  end
end

