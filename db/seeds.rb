# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.cr([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.cr(name: 'Emanuel', city: cities.first)

Category.create(name: '리그오브레전드', image_url: Rails.root.join("app/assets/images/lol.jpg").open)
Category.create(name: '배틀그라운드', image_url: Rails.root.join("app/assets/images/bg.jpg").open)
Category.create(name: '오버워치', image_url: Rails.root.join("app/assets/images/ov.jpg").open)
Category.create(name: '피파온라인4', image_url: Rails.root.join("app/assets/images/fifa4.jpg").open)
Category.create(name: '메이플스토리', image_url: Rails.root.join("app/assets/images/maple.jpg").open)
Category.create(name: '월드오브워크래프트', image_url: Rails.root.join("app/assets/images/wow.jpg").open)
Category.create(name: '하스스톤', image_url: Rails.root.join("app/assets/images/hs.jpg").open)
Category.create(name: '스타크래프트', image_url: Rails.root.join("app/assets/images/sc.jpg").open)
Category.create(name: '던전앤파이터', image_url: Rails.root.join("app/assets/images/dungeon.jpg").open)
Category.create(name: '히어로즈오브더스톰', image_url: Rails.root.join("app/assets/images/hos.jpg").open)
Category.create(name: '리니지', image_url: Rails.root.join("app/assets/images/lg.jpg").open)
# seed에 create쓰지 말고 create써야한대요
