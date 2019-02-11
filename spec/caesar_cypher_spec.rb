#bldg_blks/spec/spec_bldg_blks.rb

require './caesar_cypher.rb'

RSpec.describe '#caesar_cypher' do
    context 'when a string is given' do
        it 'encodes single string' do
            expect(caesar_cipher('hello', 1)).to eql('ifmmp')
        end
        it 'encodes multiple strings' do
            expect(caesar_cipher('hello world', 1)).to eql('ifmmp xpsme')
        end
    end
end