describe("Remote spec", function() {
    describe("should include js remote without proper extension (GPRESOURCES-116)", function() {
        it("google.maps.Map function should be defined in remote js", function() {
            expect(google.maps.Map).toBeDefined();
            expect(typeof google.maps.Map).toEqual("function");
        });
    });
});