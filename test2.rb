require "json"



def maxsearch

  File.open("users2.json") do |file| #jsonファイルを展開
    hash = JSON.load(file) #格納
    maxs = hash[0]["logs"][0]["score"] #score最大値
    maxt = hash[0]["logs"][0]["time"] #time最大値
    uids = hash[0]["id"] #最高点をとったユーザID
    uidt = hash[0]["id"] #最近にアクセスしたユーザID
    scores = [] #score格納
    hash.each do |i| #hashを展開
      log = i["logs"] #logsを格納
      log.each do |j| #各々のlogsの中身を展開
        scores.push(j["score"]) 
        if maxs < j["score"] #最高点とそのユーザを記録 
          maxs = j["score"] 
          uids = i["id"] 
        end
        if maxt < j["time"] #直近のアクセス時間とそのユーザを記録
          maxt = j["time"]
          uidt = i["id"]
        end
      end
    end
    puts "最低点を入力"
    from = gets.to_i
    puts "最高点を入力"
    to = gets.to_i
    avg = [] 
    scores.each do |k|
      if from <= k && k <= to #from-toの範囲の平均点を求める
        avg.push(k)
      end
    end
    avg = avg.sum.fdiv(avg.length)
    puts "最高点は #{maxs} by id #{uids}" 
    puts "直近アクセス時間は #{maxt} by id #{uidt}"
    puts "平均点は #{avg}"
  end
end

maxsearch

