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
      {"time":1553101195198, "score":80},
      {"time":1553101194123, "score":98}
    ]
  }
]

File.open("users.json") do |file|
  hash = JSON.load(file)
  pp (hash)
  pp( hash.sort do |b,a|
    b[:score] <=> a[:score]
  end)
end


pp (users.sort do |a,b|
  b[:score] <=> a[:score]
end)


