describe 'adapter_mongo' do
  let(:t_res){ 0.1 }
  let(:min_ttl){ t_res }

  moneta_build do
    Moneta::Adapters::Mongo.new(db: "adapter_mongo",
                                collection: 'default')
  end

  moneta_specs ADAPTER_SPECS.with_native_expires.simplevalues_only
end
