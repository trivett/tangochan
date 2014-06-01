# function constructWordListAjax(listid, wordid)
  # }


$(".show-word .button").click ->
  console.log('clicked')
  $.ajax
    dataType: "json"

    success: console.log("done")

  console.log(tweet)
