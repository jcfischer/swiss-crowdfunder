FactoryBot.define do

  factory :campaign do
    sequence(:title) { |n| "Campaign #{n}" }
    description "Spec Campaign"
    claim 'Spec Claim'
    start_date 10.days.before
    end_date 40.days.from_now
    youtube_url 'https://www.youtube.com/watch?v=ZUgjm-XqKuc'
    goal 1000
  end

  factory :goody do
    sequence(:title) { |n| "Goody #{n}" }
    campaign
  end

  factory :supporter do
    sequence(:first_name) { |n| "John, the #{n}" }
    last_name  "Doe"
    date_of_birth { 18.years.ago }
  end

  factory :admin_user do
    sequence(:email) { |n| "admin#{n}@example.com" }
    password "123123123"
    password_confirmation "123123123"
  end
end
