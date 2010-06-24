require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!(:name => "admin",
                         :email => "xunglv@gmail.com",
                         :password => "advance",
                         :password_confirmation => "advance")
    admin.toggle!(:admin)
    99.times do |n|
      name  = Faker::Name.name
      email = "user#{n+1}@gmail.com"
      password  = "advance"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end

    User.all(:limit => 6).each do |user|
      50.times do
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
  end
end