$ ->
  $('a[href^="#"]').click ->
    $("html,body").animate(
      { scrollTop: $($(this).attr("href")).offset().top }
      500
      "swing")
    return false
  return
