class MyVideosPage < Discovery

  element(:favorite_shows, "section", :xpath => "//h2[text()='Favorite Shows']/parent::div[1]/parent::section")

  i(:next_fav_show) { favorite_shows_element.i_element(:tag_name => 'i', :class => "icon-fat-arrow-right") }

end