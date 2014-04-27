require "spec_helper"

describe Word do
  # it { should validate_presence_of(:kanji) }
  it { should validate_presence_of(:kana) }
  it { should validate_presence_of(:english) }

  it "should provide an array of english translations" do
    w = Word.create(kanji: "簡単", kana: "かんたん", english: "easy, uncomplicated")

    expect(w.meanings.class).to eq(Array)
    expect(w.meanings).to eq(["easy", "uncomplicated"])

  end
end
