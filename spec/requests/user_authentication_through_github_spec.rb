require 'spec_helper'

describe "User authentication through github" do

  it "displays nickname upon authentication" do
    OmniAuth.config.test_mode = true
    OmniAuth.config.add_mock :github, { uid: '12345', info: { nickname: "Fulano" } }

    visit '/auth/github'

    page.should have_css "#user-logged-in", text: "Fulano"
  end

end