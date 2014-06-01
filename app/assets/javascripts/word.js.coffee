# function constructWordListAjax(listid, wordid)
  # }


$(".show-word .button").click ->
   console.log(@)
   $.ajax
    dataType: "json"
    url: "/words/tweet.json?utf8=✓&term=建物"
    success: (tweet) ->
      console.log(tweet)
