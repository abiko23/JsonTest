require "json"



def maxsearch

  File.open("users2.json") do |file| #jsonファイルを展開
    hash = JSON.load(file) #格納
    maxs = hash[0]["logs"][0]["score"] #score最大値
    maxt = hash[0]["logs"][0]["time"] #time最大値
    uids = hash[0]["id"]
    uidt = hash[0]["id"]
    hash.each do |i|
      numid = i["id"]
      log = i["logs"]
      log.each do |j|
        if maxs < j["score"]
          maxs = j["score"]
          uids = i["id"]
        end
        if maxt < j["time"]
          maxt = j["time"]
          uidt = i["id"]
        end
      end
    end
    puts "High score is #{maxs} by id #{uids}"
    puts "Most recently is #{maxt} by id #{uidt}"
  end
end

maxsearch

