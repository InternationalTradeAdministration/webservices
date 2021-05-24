module ScreeningList
  class MbsData < Base
    self.default_endpoint =
      'https://www.treasury.gov/ofac/downloads/consolidated/consolidated.xml'
    self.source_information_url =
      'https://home.treasury.gov/policy-issues/financial-sanctions/consolidated-sanctions-list/non-sdn-menu-based-sanctions-list-ns-mbs-list'
    self.program_id = 'CAATSA - RUSSIA'
  end
end
