require 'rails_helper'

describe District do
  let(:new) { District.create(
    district_title: "NewDistrict",
    avg_attendance: 530000,
    math_num_tested: 50000,
    math_pct_lvl1: 34,
    math_pct_lvl2: 30,
    math_pct_lvl3: 19,
    math_pct_lvl4: 15,
    ela_num_tested: 51000,
    ela_pct_lvl1: 33,
    ela_pct_lvl2: 34,
    ela_pct_lvl3: 21,
    ela_pct_lvl4: 11
    )}

  it { is_expected.to validate_presence_of(:district_title) }
  it { is_expected.to validate_uniqueness_of(:district_title) }

end
