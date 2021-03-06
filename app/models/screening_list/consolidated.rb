module ScreeningList
  class Consolidated
    include Searchable
    self.model_classes = [ScreeningList::Cap,
                          ScreeningList::Ccmc,
                          ScreeningList::Cmic,
                          ScreeningList::Dpl,
                          ScreeningList::Dtc,
                          ScreeningList::El,
                          ScreeningList::Eo13599,
                          ScreeningList::Fse,
                          ScreeningList::Isn,
                          ScreeningList::Mbs,
                          ScreeningList::Meu,
                          ScreeningList::Part561,
                          ScreeningList::Plc,
                          ScreeningList::Sdn,
                          ScreeningList::Ssi,
                          ScreeningList::Uvl,]
    self.fetch_all_sort_by = 'name.keyword'

    include SeparatedValuesable
    self.separated_values_config = [
      :_id,
      { source: [:full_name] },
      :entity_number,
      :type,
      :programs,
      :name,
      :title,
      { addresses: [:address, :city, :state, :postal_code, :country] },
      :federal_register_notice,
      :start_date,
      :end_date,
      :standard_order,
      :license_requirement,
      :license_policy,
      :call_sign,
      :vessel_type,
      :gross_tonnage,
      :gross_registered_tonnage,
      :vessel_flag,
      :vessel_owner,
      :remarks,
      :source_list_url,
      :alt_names,
      :citizenships,
      :dates_of_birth,
      :nationalities,
      :places_of_birth,
      :source_information_url,
      { ids: [:country, :expiration_date, :issue_date, :number, :type] }
    ]
  end
end
