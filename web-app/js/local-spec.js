describe("Local spec", function() {

//    beforeEach(function() {
//        player = new Player();
//        song = new Song();
//    });

    it("should include one entry css resource", function() {
        expect($('#oneEntryCss')).toHaveGreenBackground();
    });

    it("should include many entries css resource", function() {
        expect($('#manyEntriesCss1')).toHaveGreenBackground();
        expect($('#manyEntriesCss2')).toHaveGreenBackground();
        expect($('#manyEntriesCss3')).toHaveGreenBackground();
    });

    it("should include one entry js resource", function() {
        expect($('#oneEntryJs')).toHaveGreenBackground();
    });

    it("should include many entries js resource", function() {
        expect($('#manyEntriesJs1')).toHaveGreenBackground();
        expect($('#manyEntriesJs2')).toHaveGreenBackground();
        expect($('#manyEntriesJs3')).toHaveGreenBackground();
    });

    it("should include both css and js resource", function() {
        expect($('#bothCssAndJs1')).toHaveGreenBackground();
        expect($('#bothCssAndJs1')).toHaveGreenBackground();
    });

    it("should include resource that is dependent", function() {
        expect($('#dependsOnChild')).toHaveGreenBackground();
        expect($('#dependsOnParent')).toHaveGreenBackground();
    });

    it("should include many dependent resources", function() {
        expect($('#manyDependentChild1')).toHaveGreenBackground();
        expect($('#manyDependentChild2')).toHaveGreenBackground();
        expect($('#manyDependentParent')).toHaveGreenBackground();
    });

    it("should include bundled resource with a special name", function() {
        expect($('#bundledCss')).toHaveGreenBackground();
        expect($('#bundledJs')).toHaveGreenBackground();
    });

    it("should include resource with dir and file notation", function() {
        expect($('#dirAndFileNotationCss')).toHaveGreenBackground();
        expect($('#dirAndFileNotationJs')).toHaveGreenBackground();
    });

    it("should rewrite import CSS statements", function() {
        expect($('#importChild')).toHaveGreenBackground();
    });
});