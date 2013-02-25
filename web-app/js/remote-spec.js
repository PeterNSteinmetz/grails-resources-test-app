describe("Remote spec", function() {

//    beforeEach(function() {
//        player = new Player();
//        song = new Song();
//    });

    // GPRESOURCES-116
    it("should include google map js without proper extension", function() {
        expect(typeof google.maps.Load == "function");
    });

});