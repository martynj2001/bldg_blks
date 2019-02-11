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
        it 'wraps the word when reaching the end of the alphabet' do
            expect(caesar_cipher('xyz', 3)).to eql('abc')
        end
        it 'only encodes alphabetic chars' do
            expect(caesar_cipher('!abc', 1)).to eql('!bcd')
        end
        it 'maintains character case' do
            expect(caesar_cipher('ABCdef',1)).to eql('BCDefg')
        end
        it 'maintains character spaces' do
            expect(caesar_cipher('abc def ghi', 1)).to eql('bcd efg hij')
        end
    end
end