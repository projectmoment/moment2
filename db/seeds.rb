# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or find_or_create_byd alongside the db with db:setup).
#
# Examples:
#
#   cities = City.find_or_create_by([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.find_or_create_by(name: 'Emanuel', city: cities.first)

Category.find_or_create_by(name: '리그오브레전드', image_url: Rails.root.join("app/assets/images/리그오브레전드.jpg").open)
Category.find_or_create_by(name: '배틀그라운드', image_url: Rails.root.join("app/assets/images/배틀그라운드.jpg").open)
Category.find_or_create_by(name: '오버워치', image_url: Rails.root.join("app/assets/images/오버워치.jpg").open)
Category.find_or_create_by(name: '피파온라인4', image_url: Rails.root.join("app/assets/images/피파온라인4.jpg").open)
Category.find_or_create_by(name: '메이플스토리', image_url: Rails.root.join("app/assets/images/메이플스토리.jpg").open)
Category.find_or_create_by(name: '월드오브워크래프트', image_url: Rails.root.join("app/assets/images/월드오브워크래프트.jpg").open)
Category.find_or_create_by(name: '하스스톤', image_url: Rails.root.join("app/assets/images/하스스톤.jpg").open)
Category.find_or_create_by(name: '스타크래프트', image_url: Rails.root.join("app/assets/images/스타크래프트.jpg").open)
Category.find_or_create_by(name: '던전앤파이터', image_url: Rails.root.join("app/assets/images/던전앤파이터.jpg").open)
Category.find_or_create_by(name: '히어로즈오브더스톰', image_url: Rails.root.join("app/assets/images/히어로즈오브더스톰.jpg").open)
Category.find_or_create_by(name: '리니지', image_url: Rails.root.join("app/assets/images/리니지.jpg").open)
# seed에 find_or_create_by쓰지 말고 find_or_create_by써야한대요!