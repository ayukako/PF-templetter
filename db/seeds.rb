# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admins = [
  {email: 'admin@test.com', password: 'password'},
]

admins.each do |admin|
  # 一度ユーザーをメールアドレスで検索
  admin_data = Admin.find_by(email: admin[:email])
  # 該当ユーザーがいなければ、createする
  if admin_data.nil?
    Admin.create(
      email: admin[:email],
      password: admin[:password]
    )
  end
end

# envelopes = ['シンプル：ピンク', 'シンプル：ブラウン', 'シンプル：ホワイト']
# envelopes.each do |envelope|
#   Envelope.find_or_create_by(name: envelope)
# end

# papers = ['ダミー', 'シンプル：ブルー', 'シンプル：オフホワイト', 'シンプル：ピンク']
# papers.each do |paper|
#   Paper.find_or_create_by(name: paper)
# end

# fonts = ['可愛い／綺麗', '綺麗／達筆', '可愛い／クセ']
# fonts.each do |font|
#   Font.find_or_create_by(name: font)
# end

# articles = [
#   {name: '母の日', content: 'お母さんへ\r\n今日は母の日ですね。\r\n普段はなかなか伝えられないので手紙を書きます。\r\nいつも仕事に家のことに忙しそうにしているお母さん。\r\nついつい甘えてしまっているけど、本当に感謝しています。\r\nいつもほんとにありがとう。\r\nまだまだ心配や迷惑をかけてばかりだけど\r\nこれから少しずつ親孝行できたらいいなと思ってます。\r\nくれぐれも体調には気を付けて、元気でいてください。\r\n大好きなお母さんへ\r\n〇〇より'},
#   {name: '還暦のお祝い', content: 'お父さん（お母さん）\r\n還暦おめでとう。\r\nいよいよ第二の人生のスタートですね。\r\nこれまで自分の時間よりも家族を優先して\r\n頑張ってきてくれたお父さんには本当に感謝しています。\r\nこれまで家族を支えてくれて本当にありがとう。\r\n人生１００年時代と言われる時代だし、\r\nまだまだ心も身体も元気なお父さんだから\r\nこれからは夫婦の時間やプライベートを充実させて\r\nお父さんの人生を謳歌してほしいなと思います。\r\nこれからも元気でハツラツとしたお父さんでいてね。\r\n〇〇より'},
#   {name: '誕生日', content: '〇〇へ\r\nHappy Birthday\r\n△△歳のお誕生日おめでとう！\r\n普段はSNSばっかりだから、あえて手紙にしてみました。\r\nなんかちょっと照れるね笑\r\nいつも私の話を聞いてくれて、くだらないことで笑いあえる\r\n〇〇のことが大好きだよ。\r\nこうやって誕生日をお祝いできるのがとっても嬉しいです。\r\n〇〇の△△歳の１年が充実してHappyな年になりますように。\r\nこれからも楽しいことたくさんしていこうね。\r\n□□より'},
# ]
# articles.each do |article|
#   Article.find_or_create_by(name: article[:name], content: article[:content])
# end