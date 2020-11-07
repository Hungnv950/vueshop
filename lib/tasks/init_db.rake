namespace :init_db do
  desc "Migrate products"
  task :generate_products => [ :environment ] do
    100.times do |i|
      Product.create title: "#{Faker::Name.name} #{i}" , description: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true), price: Faker::Number.number(digits: 4),
        before_price: Faker::Number.number(digits: 4), count: Faker::Number.number(digits: 5),
        thumbnail_url: Faker::LoremFlickr.image
    end
  end
end
