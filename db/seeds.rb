# Generate 20 Companies with 2 Jobs each and 2 Job Applications per Job.
Company.destroy_all

unless Company.count > 0
  5.times do
    company = Company.create!(remote_company_logo_url: Faker::Company.logo,
                              name: Faker::Company.name + ' ' +
                                    Faker::Company.suffix)
    3.times do
      job = company.jobs.create!(position: Faker::Name.title,
                                 location: Faker::Address.country,
                                 description: Faker::Lorem.paragraph(10))
      2.times do
        j = job.job_applications.create(name: Faker::Name.name,
                                        resume: Faker::Lorem.sentence(3),
                                        cover_letter: Faker::Lorem.sentence(3),
                                        remote_image_url: Faker::Avatar.image)
      end
    end
  end
end


["HTML",  "CSS", "Ruby", "Java", "Python", "Ruby on Rails",  "Node.js", "Javascript", "Coffee Script", "AWS", "Heroku",  "PHP", "MySQL", "SQLite", "PG"].each do |t|
  # where = find, finds the first or creates the first
  Technology.where(name: t).first_or_create
end
