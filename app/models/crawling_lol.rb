class CrawlingLol < ActiveRecord::Base
    def crawling name
      url = "http://www.op.gg/summoner/userName=#{name}"
      doc = Nokogiri::HTML(open(url))
      puts "url :#{url}"
      tier = doc.css('.Image').image
      puts "tier :#{tier}"
      info = doc.css('span.tierRank').text
      puts "info :#{info}"
      point = doc.css('span.LeaguePoints').text
      puts "point :#{point}"
      win = doc.css('span.wins').text
      puts "win :#{win}"
      lose = doc.css('span.loses').text
      puts "lose :#{lose}"
      ratio = doc.css('span.winratio').text
      puts "ratio :#{ratio}"

    #   @lol = Crawlinglol.new(nick: nick, tier: tier, info: info, point: point, win: win, lose: lose, ratio: ratio)
    #   @lol.save
    end
end
