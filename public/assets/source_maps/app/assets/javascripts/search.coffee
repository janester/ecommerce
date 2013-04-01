window.app =
  ready: ->
    $("#search_holder").on("keyup", "#search", app.filter_products)

  filter_products: (e) ->
    text = $("#search").val()
    settings =
      datatype: "script"
      type: "get"
      url: "products/search?text=#{text}"
    $.ajax(settings)

$('#document').ready(app.ready)
