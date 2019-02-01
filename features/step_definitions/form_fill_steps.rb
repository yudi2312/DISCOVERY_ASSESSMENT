When(/^the user adds (\d+) recommended videos to favorites$/) do |no_of_video|
  @expected_count = no_of_video
  recommended_section = on_page(HomePage).recommended_for_you_element
  ctr = 0
  @added_shows = Hash.new
  recommended_section.divs(:class => ["carousel-tile-wrapper", "carousel__tileWrapper"]).each do |video|
    ctr += 1
    video.hover
    sleep 3
    title = @current_page.get_title_from_carousel(video)
    description = @current_page.get_description_from_carousel(video)
    @added_shows[title] = description
    @current_page.click_add_fav_for_carousel(video)
    break if ctr == no_of_video
    if ctr % 4 == 0
      @current_page.next_recommendation_element.click
      sleep 2
    end
  end
end