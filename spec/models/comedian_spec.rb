describe Comedian do
  describe "Validations" do
    it "is invalid without a name" do
      comedian = Comedian.create(age: 12)

      expect(comedian).to_not be_valid
    end

    it "is invalid without an age" do
      comedian = Comedian.create(name: "Opakawagalaga")

      expect(comedian).to_not be_valid
    end
  end

  describe "Class Methods" do
    describe ".average_age" do
      it "returns the average age for all comedians" do
        Comedian.create(name: "Opakawagalage", age: 20)
        Comedian.create(name: "Herp", age: 10)

        expect(Comedian.average_age).to eq(15)
      end
    end
  end
end
