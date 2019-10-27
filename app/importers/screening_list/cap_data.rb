module ScreeningList
  class CapData < Base
    self.default_endpoint =
      'https://www.treasury.gov/ofac/downloads/consolidated/consolidated.xml'
    self.source_information_url =
      'https://www.treasury.gov/resource-center/sanctions/SDN-List/Pages/capta_list.aspx'
    self.program_id = '561-Related'
  end
end
