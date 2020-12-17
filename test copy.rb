require "json"

users = [  
  {
    "id": 1,
    "name": "sato",
    "logs": [
      {"time":1553101195196, "score":84},
      {"time":1152993677688, "score":43},
      {"time":1552901583366, "score":62},
      {"time":1552781080350, "score":95},
      {"time":1552689530078, "score":51}

    ]
  },
  {
    "id":2,
    "name":"kato",
    "logs": [
      {"time":1553101195198, "score":80}
    ]
  }
]



# uhash = {}
# uhasha = []
# uscore = {}
# uscorea = []
# users.each  {|key, value|
#   puts "key is #{key}"
#   puts "value is #{value}"
#   uhash.store(key,value) #ユーザごとの情報(Json)をハッシュに記載
# }

#uscore = uhash.delete(:time)
#uarray = uhash.to_a #ハッシュを配列に変換→2要素になっちゃった
#uscorea = uscore.to_a

#puts uarray

# puts uhash.size

# a = uhash.keys
# puts a

#puts uscore
#a = uhash.dig(0,2,1)

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

