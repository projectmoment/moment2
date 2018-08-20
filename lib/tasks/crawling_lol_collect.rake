namespace :crawling_lol_collect do
  desc "TODO"
  task crawling_lol_collect: :environment do
  end

    doc = Nokogiri::HTML(open("http://www.op.gg/summoner/userName="+nick+"")) # 열고
    @crawls = doc.css('#SummonerLayoutContent > div > div > div > div > div')
    @crawls.each do |x| 
      tier = x.css('Image').image
      info = x.css('TierRankInfo').text
      @lol = CrawlingLol.new(image: tier, content: info)
      @lol.save
    end
  end
end
