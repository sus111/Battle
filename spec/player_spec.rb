require 'player'

describe Player do
  let(:name){"Thady"}
  subject {described_class.new(name)}

  describe '#name' do
    it "returns player's name" do
      expect(subject.name).to eq "Thady"
    end
  end
end
