require './spec_helper'

RSpec.describe 'dark sky', vcr: { record: :once} do
	context 'when making a valid API request' do
		it do
			VCR.use_cassette('new_york') do
				expect(forecast).to be_ok
			end
		end
	end	
end