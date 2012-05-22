# coding: utf-8

require File.dirname(__FILE__) + '/../spec_helper'

describe Object do
  describe '#は' do
    before do
      @name = 'John'
      @person = @name
    end
    context 'when give argument' do
      subject { @person }
      it 'returns true' do
        subject.は(@name).should be_true
      end
    end
    context "when doesn't give argument" do
      subject { @person }
      it 'calls NilModifierWrapper.new with self' do
        Caramel::NilModifierWrapper.should_receive(:new).with(subject)
        subject.は
      end
    end
  end

  describe '#です' do
    context 'when receiver is true' do
      before do
        @target = true
      end
      subject { @target }
      it 'returns true' do
        subject.です.should be_true
      end
    end
    context 'when receiver is false' do
      before do
        @target = false
      end
      subject { @target }
      it 'returns false' do
        subject.です.should be_false
      end
    end
  end

  describe '#ではありません' do
    context 'when receiver is true' do
      before do
        @target = true
      end
      subject { @target }
      it 'returns false' do
        subject.ではありません.should be_false
      end
    end
    context 'when receiver is false' do
      before do
        @target = false
      end
      subject { @target }
      it 'returns true' do
        subject.ではありません.should be_true
      end
    end
  end
end

module Caramel
  describe ArrayHolder do
    before do
      @array = [1, 2, 3, 4, 5]
    end
    context 'when include value' do
      1.upto(5) do |i|
        context "values is #{i}" do
          before do
            @value = i
            @array_holder = ArrayHolder.new(@array, @value)
          end
          subject { @array_holder }
          it 'returns true if call #含んでいます' do
            subject.を含んでいます.should be_true
          end
          it 'returns false if call #含んでいません' do
            subject.を含んでいません.should be_false
          end
        end
      end
    end
    context 'when include value' do
      [-1, 0, 6, 7, 10].each do |i|
        context "values is #{i}" do
          before do
            @value = i
            @array_holder = ArrayHolder.new(@array, @value)
          end
          subject { @array_holder }
          it 'returns false if call #含んでいます' do
            subject.を含んでいます.should be_false
          end
          it 'returns true if call #含んでいません' do
            subject.を含んでいません.should be_true
          end
        end
      end
    end
  end
end

describe Array do
  before do
    @target = [1, 2, 3, 4, 5]
  end
  describe '#を含んでいます' do
    context 'when include value' do
      before do
        @value = 2
      end
      subject { @target }
      it 'returns true' do
        subject.は(@value).を含んでいます.should be_true
      end
    end
    context "when doesn't include value" do
      before do
        @value = 10
      end
      subject { @target }
      it 'returns false' do
        subject.は(@value).を含んでいます.should be_false
      end
    end
  end
  describe '#を含んでいません' do
    context 'when include value' do
      before do
        @value = 2
      end
      subject { @target }
      it 'returns false' do
        subject.は(@value).を含んでいません.should be_false
      end
    end
    context "when doesn't include value" do
      before do
        @value = 10
      end
      subject { @target }
      it 'returns true' do
        subject.は(@value).を含んでいません.should be_true
      end
    end
  end
end

