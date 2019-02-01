class Discovery

  include PageObject

  element(:menu, "i", :class => "icon-menu")
  span(:my_videos, :text => "My Videos")

  def get_title_from_carousel(carousel)
    carousel.element(:tag_name => "h3", :class => "showTileSquare__title").div.text
  end

  def get_description_from_carousel(carousel)
    carousel.div(:class => 'showTileSquare__description').div.text
  end

  def click_add_fav_for_carousel(carousel)
    carousel.div(:class => "my-favorites-button-container").element(:tag_name => "i").click
  end

end