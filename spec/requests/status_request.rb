require 'rails_helper'

RSpec.describe 'Status Requests' do
    context 'GET /status' do
        it 'returns a stutus message' do
            get('/status')
            json = JSON.parse(response.body)
            expect(json['status']).to eql('okay')
            expect(response.status).to eql(200)
        end
    end
    context 'GET /consoles' do
        it 'returns an array of consoles' do
            get('/consoles')
            json = JSON.parse(response.body)
            expect( json['consoles'] ).to include('sankalp') #contain_exactly is another method that can be used 
        end
    end
    context 'GET /consoles_with_manufacturer' do
        it 'returns name of consoles from hashes' do
            get('/consoles_with_manufacturer')
            json = JSON.parse(response.body)
            expect( json['consoles'] ).to include('xbox')
        end
    end

    context 'GET /consoles_with_manufacturer/:manufacturer' do
        it 'returns all of the consoles that is specified with the manufacturer' do
            get('/consoles_with_manufacturer/microsoft') 
            json = JSON.parse(response.body)
            expect( json['consoles'] ).to contain_exactly('ps5','ps2')
        end
    end
end
