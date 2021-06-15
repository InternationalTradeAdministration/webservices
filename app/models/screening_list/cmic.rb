module ScreeningList
  class Cmic
    include Indexable
    include ScreeningList::Mappable
    self.source = {
      full_name: 'Non-SDN Chinese Military-Industrial Complex Companies List (CMIC) - Treasury Department',
      code:      'CMIC',
    }
  end
end
