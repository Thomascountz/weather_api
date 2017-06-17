require './spec_helper'

RSpec.describe 'dark sky', vcr: { record: :once } do
  let(:new_york) { DarkSky.new('40.7128', '74.0059') }

  context 'when making a valid API request' do
    it 'returns with a status of OK' do
      VCR.use_cassette('new_york') do
        expect(new_york.forecast).to be_ok
      end
    end
  end
end
