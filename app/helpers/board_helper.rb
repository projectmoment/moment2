module BoardHelper
  
  def render_with_tags(content)
    content.scan(/@\w+/).map do |c|
      user = User.find_by(name: c.delete('@'))
      if user?
            content.gsub(/@\w+/){|word| link_to word, "/mypage/#{user.user_id}", class: "chip"}.html_safe
      else # 태그된 유저가 없다면, 인풋밸류(content) 그대로 리턴하고 메소드 종료.
        return content
      end
    end
    
    # 태그된 게임이 존재함
    # 해당 게임의 타임라인 주소로 link

  end
  
  # def render_with_hashtags(content)
  #   content.scan(/#\w+/).map do |c|
  #     # 태그된 게임이 없다면, 인풋밸류(content) 그대로 리턴하고 메소드 종료.
  #     if Category.find_by(name: c.delete('#')).nil?
  #       return content
  #     end
  #   end
    
  #   # 태그된 게임이 존재함
  #   # 해당 게임의 타임라인 주소로 link
  #   content.gsub(/#\w+/){|word| link_to word, "/timelines/tag/#{word.delete('@')}", class: "chip"}.html_safe
  # end
  
end
