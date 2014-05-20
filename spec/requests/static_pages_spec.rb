require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Marketing Guide" }

  subject { page }

    shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading)    { 'Marketing for Busy People' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
    
   describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem")
        FactoryGirl.create(:micropost, user: user, content: "Ipsum")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end

      describe "follower/following counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
          other_user.follow!(user)
          visit root_path
        end

        it { should have_link("0 following", href: following_user_path(user)) }
        it { should have_link("1 followers", href: followers_user_path(user)) }
      end
    end
  end #end of home page

  describe "Help page" do
    before { visit help_path }

    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

   describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end


 describe "Traditional Advertising page" do
    before { visit traditional_advertising_path }

    it { should have_selector('h1', text: 'Traditional Advertising') }
    it { should have_title(full_title('Traditional Advertising')) }
  end


 describe "Digital Advertising page" do
    before { visit digital_advertising_path }

    it { should have_selector('h1', text: 'Digital Advertising') }
    it { should have_title(full_title('Digital Advertising')) }
  end


 describe "Branding page" do
    before { visit branding_path }

    it { should have_selector('h1', text: 'Branding') }
    it { should have_title(full_title('Branding')) }
  end

 describe "SEO page" do
    before { visit seo_path }

    it { should have_selector('h1', text: 'SEO') }
    it { should have_title(full_title('SEO')) }
  end


 describe "Email Marketing page" do
    before { visit email_marketing_path }

    it { should have_selector('h1', text: 'Email Marketing') }
    it { should have_title(full_title('Email Marketing')) }
  end

   describe "Mobile Marketing page" do
    before { visit mobile_marketing_path }

    it { should have_selector('h1', text: 'Mobile Marketing') }
    it { should have_title(full_title('Mobile Marketing')) }
  end


 describe "Social Media Marketing page" do
    before { visit social_media_marketing_path }

    it { should have_selector('h1', text: 'Social Media Marketing') }
    it { should have_title(full_title('Social Media Marketing')) }
  end

 describe "Online Advertising page" do
    before { visit online_advertising_path }

    it { should have_selector('h1', text: 'Online Advertising') }
    it { should have_title(full_title('Online Advertising')) }
  end

 describe "Market Research page" do
    before { visit market_research_path }

    it { should have_selector('h1', text: 'Market Research') }
    it { should have_title(full_title('Market Research')) }
  end

   describe "Strategic Analysis page" do
    before { visit strategic_analysis_path }

    it { should have_selector('h1', text: 'Strategic Analysis') }
    it { should have_title(full_title('Strategic Analysis')) }
  end

   describe "Marketing Objectives page" do
    before { visit marketing_objectives_path }

    it { should have_selector('h1', text: 'Marketing Objectives') }
    it { should have_title(full_title('Marketing Objectives')) }
  end

   describe "Marketing Strategies page" do
    before { visit marketing_strategies_path }

    it { should have_selector('h1', text: 'Marketing Strategies') }
    it { should have_title(full_title('Marketing Strategies')) }
  end

  describe "Marketing Program/Plan page" do
    before { visit marketing_program_plan_path }

    it { should have_selector('h1', text: 'Marketing Program/Plan') }
    it { should have_title(full_title('Marketing Program/Plan')) }
  end

  describe "Google Analytics page" do
    before { visit google_analytics_path }

    it { should have_selector('h1', text: 'Google Analytics') }
    it { should have_title(full_title('Google Analytics')) }
  end

  describe "Key Metrics page" do
    before { visit key_metrics_path }

    it { should have_selector('h1', text: 'Key Metrics') }
    it { should have_title(full_title('Key Metrics')) }
  end


  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    
    click_link "Traditional Advertising"
    expect(page).to have_title(full_title('Traditional Advertising'))
    
    click_link "Digital Advertising"  
    expect(page).to have_title(full_title('Digital Advertising'))
    
    click_link "Branding"
    expect(page).to have_title(full_title('Branding'))
    
    click_link "Media Release"
    expect(page).to have_title(full_title('Media Release'))
    
    click_link "Event Management"
    expect(page).to have_title(full_title('Event Management'))
    
    click_link "Blogging"
    expect(page).to have_title(full_title('Blogging'))
    
    click_link "SEO"
    expect(page).to have_title(full_title('SEO'))

    click_link "Email Marketing"
    expect(page).to have_title(full_title('Email Marketing'))
    click_link "Mobile Marketing"
    expect(page).to have_title(full_title('Mobile Marketing'))
    click_link "Social Media Marketing"
    expect(page).to have_title(full_title('Social Media Marketing'))
    click_link "Online Advertising"
    expect(page).to have_title(full_title('Online Advertising'))

    click_link "Market Research"
    expect(page).to have_title(full_title('Market Research'))

    click_link "Strategic Analysis"
    expect(page).to have_title(full_title('Strategic Analysis'))
    click_link "Marketing Objectives"
    expect(page).to have_title(full_title('Marketing Objectives'))
    click_link "Marketing Strategies"
    expect(page).to have_title(full_title('Marketing Strategies'))
    click_link "Marketing Program/Plan"
    expect(page).to have_title(full_title('Marketing Program/Plan'))

    click_link "Google Analytics"
    expect(page).to have_title(full_title('Google Analytics'))
    click_link "Key Metrics"
    expect(page).to have_title(full_title('Key Metrics'))

    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
  end
end