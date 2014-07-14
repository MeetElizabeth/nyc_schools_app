require 'rails_helper'

describe School do
  let(:new) { School.create(
    system_code: "M015D12",
    name: "P.S. 41 - McKenneth Bray Mohanraj High",
    managed_by: "DOE",
    category: "Intermediate Middle",
    grades: "12+",
    open_date: "Jun 9 2014",
    address: "41 Union Square",
    city: "Manhattan",
    state: "NY",
    zip: 10005,
    principal_name: "General Assembly",
    district_code: 49,
    pr_overall: "A",
    progress_grade: "A",
    performance_grade: "A",
    env_grade: "B",
    readiness_grade: "A",
    "2012_grade" => "A",
    "2011_grade" => "A",
    "2010_grade" => "B",
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


  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:address) }
  it { is_expected.to validate_presence_of(:zip) }
  it { is_expected.to validate_presence_of(:system_code) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:state) }
  it { is_expected.to validate_presence_of(:district_code) }

  it { is_expected.to validate_uniqueness_of(:system_code)}
end
