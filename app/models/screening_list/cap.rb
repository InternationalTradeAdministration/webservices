module ScreeningList
  class Cap
    include Indexable
    include ScreeningList::Mappable
    self.source = {
      full_name: 'Capta List (CAP) - Treasury Department',
      code:      'CAP',
    }
  end
end
