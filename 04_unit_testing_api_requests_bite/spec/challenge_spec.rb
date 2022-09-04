require 'challenge'

RSpec.describe CatFacts do
  it "provides a random cat fact from a website" do
    fake_requester = double(:requester)
    allow(fake_requester).to receive(:get).with(
      URI("https://catfact.ninja/fact")
    ).and_return(
      '{"fact":"In just seven years, a single pair of cats and their offspring could produce a staggering total of 420,000 kittens.","length":115}'
    )
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: In just seven years, a single pair of cats and their offspring could produce a staggering total of 420,000 kittens."
  end
end