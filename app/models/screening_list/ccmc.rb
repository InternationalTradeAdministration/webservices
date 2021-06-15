module ScreeningList
  class Ccmc
    include Indexable
    include ScreeningList::Mappable
    self.source = {
      full_name: 'Non-SDN Communist Military Companies Sanctions List (CCMC) - Treasury Department',
      code:      'CCMC',
    }
  end
end
