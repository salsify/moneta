describe 'standard_hashfile_with_expires' do
  let(:t_res){ 0.1 }
  let(:min_ttl){ t_res }

  moneta_store :HashFile do
    {dir: File.join(tempdir, "simple_hashfile_with_expires"),
     expires: true}
  end

  moneta_specs STANDARD_SPECS.with_expires
end
