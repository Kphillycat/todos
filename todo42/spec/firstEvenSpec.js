describe( "#first_even", function() {
  it("should return 2", function () {
    expect(first_even([15, 3, 7, 2, 4, 6])).toBe(2);
});
  it("should return 4", function () {
    expect(first_even([15, 3, 5, 7, 4, 6])).toBe(4);
})
  it("should return 12", function () {
    expect(first_even([12, 10, 6, 4, 2])).toBe(12);
})
});
