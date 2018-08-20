class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable
  has_many :profiles , dependent: :destroy
  has_many :boards , dependent: :destroy
  has_many :likes
  has_many :liked_boards, through: :likes, source: :board
  acts_as_follower
  acts_as_followable

  def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("name LIKE ?", "%#{search}%")
  end

  def self.crawling(name)
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

  #좋아요
  def is_like?(board)
    Like.find_by(user_id: self.id, board_id: board.id).present?
  end
  
  # for SNS login       
  def self.find_for_oauth(auth, signed_in_resource = nil)

    # user와 identity가 nil이 아니라면 받는다
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user
    
    # user가 nil이라면 새로 만든다.
    if user.nil?
      
      # 이미 있는 이메일인지 확인한다.
      email = auth.info.email
      user = User.where(:email => email).first  
      unless self.where(email: auth.info.email).exists?
        
        # 없다면 새로운 데이터를 생성한다.
        if user.nil?
          user = User.new(
            name: auth.info.name,
            email: auth.info.email,
            password: Devise.friendly_token[0,20]
          )            
          
          user.save!
        end
        
      end
    
    end
    
    if identity.user != user
      identity.user = user
      identity.save!
    end
    user
    
  end
  
  def email_required?
    false
  end
 
  def email_changed?
    false
  end
  
  
end
