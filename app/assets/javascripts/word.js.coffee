# function constructWordListAjax(listid, wordid)
  # }


$(".get-tweet").click ->

   $.ajax
    dataType: "json"
    url: "/words/tweet.json?utf8=✓&term=建物"
    success: (tweet) ->
      console.log(tweet)
