module ScreeningList
  class Eo13959Data < Base
    self.default_endpoint =
      'https://www.treasury.gov/ofac/downloads/consolidated/consolidated.xml'
    self.source_information_url =
      'https://home.treasury.gov/policy-issues/financial-sanctions/recent-actions/20210114_44'
    self.program_id = 'CCMC-EO13959'
  end
end
