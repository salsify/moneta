describe 'standard_tdb_with_expires' do
  let(:t_res){ 0.1 }
  let(:min_ttl){ t_res }

  moneta_store :TDB do
    {file: File.join(tempdir, "simple_tdb_with_expires"), expires: true}
  end

  moneta_specs STANDARD_SPECS.without_multiprocess.with_expires
end
