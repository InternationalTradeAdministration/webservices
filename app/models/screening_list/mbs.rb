module ScreeningList
  class Mbs
    include Indexable
    include ScreeningList::Mappable
    self.source = {
      full_name: 'Non-SDN Menu-Based Sanctions List (NS-MBS List) - Treasury Department',
      code:      'MBS',
    }
  end
end
