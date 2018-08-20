module ProfileHelper
   
  def render_with_tags(content) # 댓글 내용이 인자로 들어옴
    content.scan(/@\w+/).map do |c| # 인풋값에서 '@xx'형태 찾음
      user = User.find_by(name: c.delete('@')) # @xx에서 '@'뗀 'xx'값(이름)
      
      if user.nil? # 해당 유저가 존재하지 x => 그대로 return
        return content
      end          # 해당 유저가 존재 => '@xxx'링크를 누르면 해당 유저의 마이페이지
      content.gsub(/@\w+/){|name| link_to name, "/mypage/#{user.user_id}", class: "chip"}.html_safe
    end
  end
  
  def getIDbyName(userName)
    user = User.find_by(name: userName.delete('@'))
    if user.nil?
      return nil
    end
      
    return user.id
  end
end
