require 'minitest/autorun'
require_relative 'Converter'

describe Words do
    before do
        @words = Words.new
    end

    describe "Should convert entered integers to words" do
        it "must return Twelve" do
           # @words.convertIntToWords(12).must_equal 'Twelves'
           assert_equal "Twelve", @words.convertIntToWords(12)
        end
        it "must return Forty Two" do
            # @words.convertIntToWords(12).must_equal 'Twelves'
            assert_equal "Forty Two", @words.convertIntToWords(42)
         end
         
        it "must return One Hundred and Twenty" do
            # @words.convertIntToWords(120).must_equal 'Twelves'
            assert_equal "One Hundred and Twenty", @words.convertIntToWords(120)
         end
         
        it "must return Seven Hundred Eighty and Two" do
            # @words.convertIntToWords(782).must_equal 'Twelves'
            assert_equal "Seven Hundred and Eighty Two", @words.convertIntToWords(782)
         end
         it "must return Eight Thousand Three Hundred and Forty Four" do
            # @words.convertIntToWords(8344).must_equal 'Twelves'
            assert_equal "Eight Thousand Three Hundred and Forty Four", @words.convertIntToWords(8344)
         end
         it "must return Sixty Three Thousand Thousand Nine Hundred and Forty Seven" do
            # @words.convertIntToWords(63947).must_equal 'Twelves'
            assert_equal "Sixty Three Thousand Nine Hundred and Forty Seven", @words.convertIntToWords(63947)
         end

         
    end


end