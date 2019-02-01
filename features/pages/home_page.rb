class HomePage < Discovery

  element(:recommended_for_you, "section", :xpath => "//div[contains(text(), 'Recommended')]/parent::h2/parent::section")

  i(:next_recommendation) { recommended_for_you_element.i_element(:tag_name => 'i', :class => "icon-fat-arrow-right") }

end