/**
 * Spec helpers specifically for grails-resources-reference-app.
 */

beforeEach(function() {

    // Google Chrome and Firefox confirmed
    var rgbGreen = 'rgb(170, 187, 119)';

    this.addMatchers({
        toBePlaying: function(expectedSong) {
            var player = this.actual;
            return player.currentlyPlayingSong === expectedSong &&
                player.isPlaying;
        },
        toHaveGreenBackground: function() {
            var element = this.actual;
            var bgColor = $(element).css('background-color');
            return bgColor == rgbGreen;
        }
    });
});
