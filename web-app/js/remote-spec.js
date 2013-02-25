describe("Remote spec", function() {

//    beforeEach(function() {
//        player = new Player();
//        song = new Song();
//    });

    it("should include google map js without proper extension (GPRESOURCES-116)", function() {
        expect(typeof google.maps.Load == "function");
    });

});