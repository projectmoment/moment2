require 'open-uri'
class CrawlerController < ApplicationController
  def index
    if params[:lolnick]
      url = "http://www.op.gg/summoner/userName=#{params[:lolnick]}"
      doc = Nokogiri::HTML(open(url))
      tier = doc.css('Image').image
      info = doc.css('span.tierRank').text
      point = doc.css('span.LeaguePoints').text
      win = doc.css('span.win').text
      lose = doc.css('span.lose').text
      ratio = doc.css('span.winratio').text
      @lol = Crawlinglol.new(nick: nick, tier: tier, info: info, point: point, win: win, lose: lose, ratio: ratio)
      @lol.save
    end  
  end
end
