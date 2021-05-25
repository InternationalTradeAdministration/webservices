module ScreeningList
  class CcmcData < Base
    self.default_endpoint =
      'https://www.treasury.gov/ofac/downloads/consolidated/consolidated.xml'
    self.source_information_url =
      'https://home.treasury.gov/policy-issues/financial-sanctions/consolidated-sanctions-list/ns-ccmc-list'
    self.program_id = 'CCMC-EO13959'
  end
end
