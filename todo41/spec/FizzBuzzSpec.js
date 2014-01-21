describe( "#FizzBuzz", function() {
  it("should test for the FizzBuzz console output", function () {
    console.log = jasmine.createSpy("log");
    var test = FizzBuzz(15);
    expect(console.log).toBe("FizzBuzz");
});
});
