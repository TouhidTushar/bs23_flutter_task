import 'dart:math';

class RandomStringGenerator {
  String generateLoadingText() {
    return loadingText[Random().nextInt(loadingText.length)];
  }

  final List<String> loadingText = [
    "Whispering winds dance in moonlight, painting dreams with stardust.",
    "Bouncing kangaroos sing lullabies to the twinkling constellations.",
    "Galactic pancakes orbit around the syrupy nucleus of the breakfast galaxy.",
    "Jazz-playing robots groove to the binary beats of the silicon orchestra.",
    "Quantum kittens perform synchronized acrobatics in a parallel universe.",
    "Infinite possibilities unfold like origami cranes in the cosmic breeze.",
    "Pixelated rainbows illuminate the virtual skies of the digital dimension.",
    "Time-traveling turtles break dance through epochs of ancient history.",
    "Wandering wizards brew potions of laughter in cauldrons of absurdity.",
    "Giraffes in top hats gracefully navigate the skyscrapers of whimsy.",
    "Lunar librarians catalog the dreams of sleeping stars in celestial archives.",
    "Robotic butterflies flutter in the circuits of a neon cityscape.",
    "Gummy bears practice synchronized swimming in a sea of raspberry jelly.",
    "A symphony of intergalactic laughter echoes through the cosmic canyons.",
    "Enchanted typewriters compose poems with keys that tap to the beat of eternity.",
    "Rainbow unicorns moonwalk across the galaxies, leaving trails of stardust.",
    "Singing mermaids harmonize with the melodies of underwater symphonies.",
    "Electric fireflies illuminate the code of the digital meadow at midnight.",
    "Bubbles of joy burst into a confetti of laughter at the carnival of happiness.",
    "Moon walking penguins break dance on the frozen dance floor of Antarctica.",
    "Funky llamas disco dance under the glittering disco ball of the Andes.",
    "Cybernetic dragonflies zip through the binary streams of virtual reality.",
    "A cosmic jigsaw puzzle assembles itself with pieces made of stardust.",
    "Holographic dolphins leap through the hologramatic waves of imagination.",
    "Quantum corgis teleport through dimensions, leaving trails of fluffiness.",
    "Juggling planets spin in orbit around the galactic circus of the cosmos.",
    "Magnetic sloths attract good vibes as they lounge on the branches of serenity.",
    "Interstellar popcorn pops in the microwave of the Milky Way's kitchen.",
    "Neon hummingbirds sip nectar from the glowing flowers of the electric garden.",
    "Funky monkeys swing from the vines of the rhythm jungle, drumming on coconut drums.",
    "Surreal sunflowers bloom in the fields of imagination, painting the daydreams.",
    "Whirling dervishes twirl in a cosmic ballet, leaving trails of enlightenment.",
    "Bouncing rubber ducks race in a quantum bathtub through space and time.",
    "Chameleons don disco attire and blend into the psychedelic party of nature.",
    "Benevolent wizards brew laughter potions, spreading joy with every sip.",
    "Cosmic penguins don spacesuits and waddle on the moon's icy surface.",
    "Sparks of creativity ignite fireworks in the night sky of inspiration.",
    "Tangoing flamingos gracefully dance on the shores of the surreal lagoon.",
    "Robotic bees buzz in harmony, pollinating circuits in the digital garden.",
    "A parade of juggling jellyfish mesmerizes spectators in the ocean of dreams.",
    "Invisible pianos serenade the ethereal audience with ghostly melodies.",
    "Synchronized fireflies perform a dazzling light show in the enchanted forest.",
    "Mystical owls exchange wisdom in a celestial conversation under the moon.",
    "Cosmic kangaroos hop between dimensions, carrying pockets of stardust.",
    "Harmonizing raindrops compose a symphony on the leaves of the cosmic tree.",
    "Magnetic zebras attract stripes of unity in the kaleidoscope of diversity.",
    "Jazz-playing squirrels swing from branch to branch in the rhythmical canopy.",
    "Robotic butterflies emerge from the cocoon of code, fluttering into existence.",
    "Bouncing bumblebees jive to the sweet tunes of the nectar-filled meadow.",
    "Glowing fireflies in a jar illuminate the dreams of a sleeping child.",
  ];
}
