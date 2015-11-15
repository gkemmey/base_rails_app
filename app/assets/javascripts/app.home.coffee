class App.SinglePageScroller
  constructor: (@links) ->

  render: ->
    # get the offset of the window from the top of page
    window_position = $(window).scrollTop();
    window_height   = $(window).height();
    document_height = $(document).height();

    for link in @links
      # get the offset of the div from the top of page
      div_position = $(link).offset().top;
      div_height   = $(link).height();

      if window_position >= div_position and window_position < (div_position + div_height)
        $("a[href='#{link}']").parent().addClass("active");
      else
        $("a[href='#{link}']").parent().removeClass("active");

# turbo links for running only on the specfied controller and action
$(document).on "page:change", ->
  return unless $(".home.home").length > 0

  # collect nav link hrefs
  links = do ->
    results = []
    
    for li in $("ul.nav").find("li")
      results.push $(li).find("a").first().attr("href")
    
    results

  scroller = new App.SinglePageScroller links

  # with the scroller object ready to go, lets add a scroll event to utilize it
  $(window).on "scroll", ->
    return unless $(".home.home").length > 0
    scroller.render()