# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(name: '리그오브레전드', image_url: Rails.root.join("app/assets/images/리그오브레전드.jpg").open)
Category.create(name: '배틀그라운드', image_url: Rails.root.join("app/assets/images/배틀그라운드.jpg").open)
Category.create(name: '오버워치', image_url: Rails.root.join("app/assets/images/오버워치.jpg").open)
Category.create(name: '피파온라인4', image_url: Rails.root.join("app/assets/images/피파온라인4.jpg").open)
Category.create(name: '메이플스토리', image_url: Rails.root.join("app/assets/images/메이플스토리.jpg").open)
Category.create(name: '월드오브워크래프트', image_url: Rails.root.join("app/assets/images/월드오브워크래프트.jpg").open)
Category.create(name: '하스스톤', image_url: Rails.root.join("app/assets/images/하스스톤.jpg").open)
Category.create(name: '스타크래프트', image_url: Rails.root.join("app/assets/images/스타크래프트.jpg").open)
Category.create(name: '던전앤파이터', image_url: Rails.root.join("app/assets/images/던전앤파이터.jpg").open)
Category.create(name: '히어로즈오브더스톰', image_url: Rails.root.join("app/assets/images/히어로즈오브더스톰.jpg").open)
Category.create(name: '리니지', image_url: Rails.root.join("app/assets/images/리니지.jpg").open)
