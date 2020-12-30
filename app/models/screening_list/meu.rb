module ScreeningList
  class Meu
    include Indexable
    include ScreeningList::Mappable
    self.source = {
      full_name: 'Military End User (MEU) List - Bureau of Industry and Security',
      code:      'MEU',
    }
  end
end
