require "json"



def maxsearch

  File.open("users.json") do |file| #jsonファイルを展開
    hash = JSON.load(file) #格納
    log=  hash["logs"] #logsの中身を格納
    maxs = hash["logs"][0]["score"] #score最大値
    maxt = hash["logs"][0]["time"] #time最大値
    log.each do |num|
      if maxs < num["score"]     
        maxs = num["score"]
      end
      if maxt < num["time"]
        maxt = num["time"]
      end
    end

    puts maxs
    puts maxt

  end

end

maxsearch

