Then(/^favorite videos should be displayed in the favorite shows section$/) do
  favorite_shows = @current_page.favorite_shows_element.divs(:class => ["carousel-tile-wrapper", "carousel__tileWrapper"])
  expect(favorite_shows.count).to eql(@expected_count)
  actual_fav_shows = Hash.new
  favorite_shows.each_with_index do |show, i|
    show.hover
    actual_fav_shows[@current_page.get_title_from_carousel(show)] =  @current_page.get_description_from_carousel(show)
    if (i+1) % 4 == 0
      @current_page.next_fav_show_element.click
      sleep 2
    end
  end

  expect(actual_fav_shows).to eq(@added_shows)

end