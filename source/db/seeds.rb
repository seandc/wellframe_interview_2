require 'active_record/fixtures' 

ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "managers")
ActiveRecord::Fixtures.create_fixtures("#{Rails.root}/test/fixtures", "patients")