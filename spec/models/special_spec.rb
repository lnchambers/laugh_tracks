describe Special do
  describe "Validations" do
    it "is invalid without a name" do
      comedian = Special.create(comedian_id: 12)

      expect(comedian).to_not be_valid
    end

    it "is invalid without an comedian_id" do
      comedian = Special.create(name: "Opakawagalaga")

      expect(comedian).to_not be_valid
    end
  end
end
