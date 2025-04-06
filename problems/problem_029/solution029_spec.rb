require_relative '../../test_helper'
require_relative 'solution029'

RSpec.describe DailyCodingProblem029::URLShortener do
  let(:shortener) { DailyCodingProblem029::URLShortener.new }

  describe '#shorten' do
    it 'returns a 6-character alphanumeric string' do
      short_url = shortener.shorten("https://example.com")
      expect(short_url).to match(/\A[a-zA-Z0-9]{6}\z/)
    end

    it 'returns the same short URL for the same input' do
      short_url1 = shortener.shorten("https://example.com")
      short_url2 = shortener.shorten("https://example.com")
      expect(short_url1).to eq(short_url2)
    end

    it 'returns different short URLs for different inputs' do
      short_url1 = shortener.shorten("https://example.com")
      short_url2 = shortener.shorten("https://another.com")
      expect(short_url1).not_to eq(short_url2)
    end
  end

  describe '#restore' do
    it 'returns the original URL for a valid short URL' do
      original_url = "https://example.com"
      short_url = shortener.shorten(original_url)
      expect(shortener.restore(short_url)).to eq(original_url)
    end

    it 'returns nil for an invalid short URL' do
      expect(shortener.restore("abcdef")).to be_nil
    end
  end

  describe 'collision handling' do
    it 'does not produce duplicate short URLs' do
      allow(SecureRandom).to receive(:alphanumeric).and_return("abc123", "abc123", "xyz789")

      short_url1 = shortener.shorten("https://example.com")
      short_url2 = shortener.shorten("https://another.com")

      expect(short_url1).to eq("abc123")
      expect(short_url2).to eq("xyz789")
    end
  end
end
