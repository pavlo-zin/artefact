// Artefact descriptions are intentionally detailed and exceed 80 chars
// ignore_for_file: lines_longer_than_80_chars

const _baseUrl =
    'https://raw.githubusercontent.com/pavlo-zin/showcase-assets/refs/heads/main/artefacts/';

const _postersUrl = '$_baseUrl/model_posters/';
const _modelsUrl = '$_baseUrl/models/';

class Artefact {
  const Artefact(
    this.id,
    this.title,
    this.date,
    this.price,
    this.location,
    this.classification,
    this.description,
    this.legendaryFact,
    this.history,
  );

  final String id;
  final String title;
  final String date;
  final String price;
  final String location;
  final String classification;
  final String description;
  final String legendaryFact;
  final String history;

  String get modelUrl => '$_modelsUrl$id.glb';
  String get posterUrl => '$_postersUrl$id.webp';
}

const featuredIds = ['11', '15', '16', '6', '12', '19'];

final List<Artefact> demoArtefacts = [
  const Artefact(
    '1',
    'Mythic',
    '1200 BC',
    r'$2.3M Celestial Credits',
    'Crimson Expanse, Mars',
    'Hybrid Sculpture',
    'This enigmatic relic fuses the grace of an elephant with the stoicism of human form, carved from dark stone with intricate, otherworldly details. Its presence exudes an ancient power that hints at forgotten deities and lost cosmic rituals, with scholars debating its origin while travelers whisper of its fate-altering potential. The aura around it shimmers with a mystique that defies mortal understanding.\n\nAn unseen energy pulses from within, drawing curious souls into its mysterious embrace. Many believe that touching its surface can alter the course of destiny, leaving an indelible mark on those who dare to dream.',
    'Legends say the statue was once venerated during solar eclipses, believed to bring fortune or doom to nearby settlements.',
    'Unearthed from a hidden canyon on Mars, this relic has journeyed through countless hands over millennia. Its weathered surface bears the scars of ancient ceremonies, and recent studies suggest it played a pivotal role in interplanetary rites. Modern explorers have uncovered additional symbols hinting at its otherworldly origins.',
  ),
  const Artefact(
    '2',
    'Temporal Veil',
    '1050 BC',
    r'$450K Galactic Units',
    'Aurora Spire, Venus',
    'Chronometric Relic',
    'An exquisitely crafted timepiece whose delicate gears and inscriptions capture the relentless flow of time, blending artistry with precision to evoke the mystery of hours long past and subtle luminescence that hints at other dimensions. Its design seems to distort reality, bending moments into timeless memories. Every cog appears to hum with secrets of ancient epochs.\n\nIts ticking echoes through realms, merging past and future in a fleeting moment of wonder. The sound reverberates like the heartbeat of the universe, compelling onlookers to lose themselves in the enigma of time.',
    'Folklore whispers that the timepiece was forged during a rare celestial alignment, its rhythmic tick said to alter the fate of empires with every chime.',
    'Discovered in a hidden vault beneath Venusian sands, the timepiece has passed through secretive hands over the centuries. Expert horologists have restored its mechanism while preserving its original splendor, chronicled in fragmented ancient texts. Each restoration unveils deeper enigmas, as if time itself were trying to whisper forgotten secrets.',
  ),
  const Artefact(
    '3',
    'Infinite Meme',
    '2099 AD',
    'Priceless',
    'Nebular Orbit, Saturn',
    'Digital Icon',
    'A dazzling digital relic that reimagines an iconic figure through pulsating holographic displays and shifting neon hues, challenging the boundaries between art and modern myth while becoming a beacon for digital revolutionaries. Its ever-shifting colors reflect the chaotic beauty of a hyper-connected world. This artefact is a living testament to the fusion of technology and creativity.\n\nIts digital heartbeat synchronizes with the pulse of a new era, inspiring legends in the cyber realm. Rumors suggest that its code contains encrypted messages from the dawn of the digital age.',
    'Gossip in cyber circles claims that this relic once held secret algorithms capable of rewriting digital destinies, igniting fervent debates about its mystical origins.',
    'Originating from the early days of digital experimentation, this artifact was recovered from a forgotten cyber archive. Its journey through underground tech bazaars has only amplified its legendary status, with restoration experts preserving its elusive digital essence. Its cryptic legacy continues to evolve as hackers decode layers of forgotten code.',
  ),
  const Artefact(
    '4',
    'Zen',
    '700 AD',
    r'$1.25M Cosmic Tokens',
    'Mystic Grove, Ceres',
    'Spiritual Relic',
    'Carved from ancient timber, this effigy radiates a serene and meditative aura with its graceful, abstract form and delicate engravings, echoing the wisdom of forgotten sages and the secret murmurs of light and shadow. Its presence invites a quiet contemplation of life’s mysteries and the dance of the cosmos. The intricate details whisper stories of ancient rituals and spiritual awakening.\n\nA tranquil vibration surrounds it, offering solace and mindful enlightenment to all who encounter its cosmic balance. Observers often report a sudden clarity of thought as if the relic itself channels universal calm.',
    'Religious lore holds that wandering monks once blessed the statue during a sacred pilgrimage, endowing it with an energy capable of healing the soul.',
    'Unearthed from a secluded grove on Ceres, the statue has served as a silent beacon for secret spiritual gatherings. Its gentle patina and intricate carvings have been meticulously preserved through centuries of ritualistic veneration and natural endurance. Recent meditative studies suggest that its vibrations continue to harmonize with the energies of the universe.',
  ),
  const Artefact(
    '5',
    'Ivory Enigma',
    '2150 AD',
    r'$7.6M Nebular Credits',
    'Solar Haven, Europa',
    'Extraterrestrial Relic',
    'Encased in a pristine white suit, this humanoid figure blends futuristic design with enigmatic allure, its minimalist contours and luminous surface evoking a mysterious purpose that transcends earthly existence. The stark contrast of its design inspires visions of both utopian futures and lost civilizations. Intricate patterns etched into its surface hint at secrets from beyond the stars.\n\nStanding as an emblem of cosmic exploration, its pristine exterior hides layers of coded mysteries waiting to be deciphered. Scholars and explorers alike are drawn to its enigmatic presence, each hoping to unlock the secrets embedded within its form.',
    'Folklore among spacefarers suggests the suit once housed a messenger from the stars, whose silent gaze foretold the rise and fall of distant civilizations.',
    'Recovered from an abandoned orbital station around Europa, the relic has passed through the hands of renowned explorers. Detailed logs and enigmatic markings hint at its storied past, fueling ongoing debates among cosmic historians. Modern space archaeologists marvel at the interstellar secrets embedded in its design.',
  ),
  const Artefact(
    '6',
    'Ancient Sage Remnant',
    '450 BC',
    r'$3.9M Oracle Coins',
    'Eternal Archive, Mercury',
    'Philosophic Relic',
    'A timeless bust capturing the penetrating gaze of an ancient philosopher, its features chiseled with poetic precision and classical elegance, inviting deep reflections where art meets mysticism. Every carved line and shadow speaks of a legacy steeped in intellectual fervor. The relic seems to whisper forgotten philosophies to those who pause to listen.\n\nThe serene countenance of the bust beckons viewers to a realm where mortal thoughts intertwine with divine wisdom. Many claim that a moment of contemplation before it leads to profound personal revelations.',
    'Ancient scrolls recount that the bust was revered as a conduit of divine wisdom, granting secret insights to those who dared to commune with its silent spirit.',
    'Excavated from the ruins of a long-forgotten temple on Mercury, the bust has been carefully restored by scholars. Its weathered surface and subtle inscriptions tell a tale of intellectual legacy and the enduring power of ancient thought. Recent findings suggest that hidden symbols within its eyes might unlock timeless truths.',
  ),
  const Artefact(
    '7',
    'Aether Pulse',
    '1890 AD',
    r'$4.2M Chrono Shillings',
    'Cogwheel Reach, Mars',
    'Mechanical Relic',
    'An intricate engine crafted from brass and steam, this artifact pulses with the heartbeat of a bygone industrial age, its elaborate gears and valves conjuring visions of daring inventors and secret airships. The clamor of its moving parts evokes memories of grand industrial revolutions. Its design merges functionality with artistic mastery in a way that captivates the senses.\n\nThe mechanism hums with mysterious energy, as if it still yearns to power dreams of innovation. Every turn of its cogs seems to echo the ambitions of a forgotten era.',
    'Legends claim the engine once powered a mythical airship that traversed hidden realms, where technology and sorcery were indistinguishable.',
    'Discovered in an abandoned factory on Mars, the engine has been meticulously restored by a team of dedicated engineers. Its historical records, scattered across old blueprints and whispered lore, reveal a legacy of innovation and daring exploration. Engineers continue to uncover hidden ciphers that speak of revolutionary blueprints lost in time.',
  ),
  const Artefact(
    '8',
    'Neon',
    '2250 AD',
    r'$12M Quantum Bills',
    'Luminous Bastion, Titan',
    'Digital Relic',
    'A sleek control panel that dazzles with illuminated interfaces and fluid touch controls, its seamless digital displays merging with minimalist aesthetics to hint at a sophisticated cosmic system. The interplay of light and technology creates an entrancing visual spectacle. Its design hints at a forgotten era of interstellar navigation and encrypted cosmic messages.\n\nIts radiant glow is said to map the pathways of galaxies, inviting interstellar navigators to decipher cryptic signals. The panel’s design has inspired many to embark on voyages of discovery, seeking answers hidden in the stars.',
    'Urban legends whisper that this panel directed an interstellar fleet in a decisive battle, its hidden codes said to be keys to untold universal powers.',
    "Salvaged from a derelict cruiser near Titan, the panel's operational history is chronicled in fragmented star logs and clandestine data caches. Restoration experts have painstakingly preserved its advanced circuitry, ensuring that its legacy endures as a masterpiece of futuristic engineering. Recent restorations reveal encrypted data that may hold the key to forgotten space odysseys.",
  ),
  const Artefact(
    '9',
    'Verdant Mystic Whimsy',
    '2110 AD',
    r'$6.5M Eden Tokens',
    'Emerald Veil, Europa',
    'Bio-Art Relic',
    'An abstract sculpture grown from engineered flora, its organic curves and vibrant hues mimic nature’s wild unpredictability while embodying the union of biotechnology and art. The living structure is a dance of nature and innovation, ever-changing with the passage of time. Its growth patterns reveal secrets of genetic artistry and experimental biology.\n\nIt invites viewers on a sensory journey through natural growth and creative expression, as if nature itself were composing a silent symphony. Many find in it a reflection of the boundless creativity of life and the promise of future ecological marvels.',
    'Local folklore claims that during rare cosmic alignments, the sculpture emits a soft, otherworldly glow, believed to channel the wisdom of ancient forests.',
    'Cultivated in a clandestine lab on Europa, this living artwork has undergone continuous nurturing by visionary botanists. Its evolution, marked by bursts of experimental brilliance, is recorded in secret archives of futuristic eco-art. Ongoing studies reveal that its growth patterns respond to cosmic rhythms in unexpected ways.',
  ),
  const Artefact(
    '10',
    'Celestial Cosmic Flux',
    '2430 AD',
    r'$87.5M Starlight Credits',
    'Aurora Drift, Neptune',
    'Abstract Cosmic Relic',
    'A vibrant sculpture that captures the dynamic flow of cosmic energy with undulating forms and radiant hues, its interplay of light and shadow creating a mesmerizing dance of universal mystery. The artwork pulses with a rhythm that mirrors the expansion of the universe, weaving together moments of chaos and order. Its intricate design challenges the observer to see beyond the surface into the heart of creation.\n\nThis kinetic masterpiece sparks awe and philosophical debate, inviting observers to ponder the eternal evolution of the cosmos. Its moving forms inspire a deep reflection on the transient nature of existence and the infinite cycle of creation and destruction.',
    'Some mystics assert that the sculpture vibrates in tune with the heartbeat of distant galaxies, a claim that has ignited passionate debates among astronomers and poets.',
    'Recovered from a hidden vault on Neptune, the sculpture’s layered history is documented in fragmented cosmic diaries. Its restoration involved an international team of artists and engineers dedicated to preserving its revolutionary design. New discoveries in its structure hint at unknown cosmic energies that shaped its very form.',
  ),
  const Artefact(
    '11',
    'Divine Grace',
    '350 BC',
    r'$58M Ambrosia Coins',
    'Elysian Veil, Venus',
    'Classical Relic',
    'A delicately carved bust that exudes ethereal beauty, capturing the serene allure of a long-revered goddess with soft, harmonious lines and a luminous presence that inspires deep romantic nostalgia. The artistry of the sculpture speaks of divine inspiration and centuries of worship. Its form is a bridge between the earthly and the celestial, resonating with timeless grace.\n\nA subtle glow emanates from its form, suggesting a divine connection beyond mortal comprehension. Many who gaze upon it feel a profound stirring of the soul, as if touched by the hand of the divine.',
    'Ancient myths proclaim that a single glance at the bust could stir hidden passions and invoke the blessings of love, a secret passed down through countless generations.',
    'Unearthed from a secluded temple on Venus, the bust has journeyed through eras as a symbol of timeless beauty. Its storied past is etched in poetic hymns and sacred inscriptions, meticulously preserved by successive generations of restorers. Recent excavations have revealed hidden allegories carved into its base, deepening its mythic allure.',
  ),
  const Artefact(
    '12',
    'Echo Vessel',
    '200 AD',
    r'$1.3M Terra Credits',
    'Mirage Basin, Mercury',
    'Ceramic Relic',
    'An elegant vase whose flowing curves and subtle ornamentation hint at the grandeur of ancient ceremonial artistry, evoking a bygone era of mystique and ritual splendor while silently preserving cultural memory. The delicate contours speak of a time when art was a vessel for divine inspiration. Its craftsmanship is a testament to the enduring legacy of ancient civilizations.\n\nIts smooth surface and intricate patterns urge contemplation of forgotten ceremonies and lost lore, celebrated as a masterpiece of enduring elegance. The vase continues to inspire awe and scholarly intrigue with its hidden symbols and timeless design.',
    'Gossips from antiquity claim the vase once contained an elixir of eternal life, a myth that continues to captivate collectors and scholars alike.',
    'Excavated from the ruins of an ancient settlement on Mercury, the vase has been carefully restored over decades. Its journey through time is chronicled in faded inscriptions and oral traditions, underscoring its pivotal role in lost rituals. Modern restorers continue to decode its inscriptions, revealing whispers of forgotten ceremonies and cultural revolutions.',
  ),
  const Artefact(
    '13',
    'Ivory Mirage',
    '950 AD',
    r'$1.05M Lunar Tokens',
    'Luminous Crater, Io',
    'Porcelain Relic',
    'A smooth, white porcelain mask radiates austere elegance with its minimalist design and serene expression, its flawless surface hinting at sacred rituals and transformative ceremonies of old. The mask is a silent witness to centuries of spiritual practice and hidden truths. Its subtle contours invite a deep, introspective gaze that transcends ordinary perception.\n\nCaptivating with an air of purity and timeless mystique, it evokes quiet reverence while drawing mystics into silent contemplation. Its enigmatic presence continues to inspire both artistic expression and scholarly inquiry.',
    'Some esoteric sects believed the mask was a divine conduit, capable of channeling ancestral spirits during sacred rites, a secret preserved in hushed reverence.',
    'Recovered from an ancient shrine on Io, the mask has been the focus of both scholarly study and ritualistic veneration. Its pristine condition is a testament to centuries of careful preservation and the enduring power of its cultural legacy. Scholars believe that its delicate inscriptions may hold the key to lost rites of passage and divine communion.',
  ),
  const Artefact(
    '14',
    'Roaring Mystic Sigil',
    '1150 AD',
    r'$2.5M Forge Marks',
    'Iron Bastion, Mars',
    'Engraved Relic',
    'A rugged metal plate adorned with an abstract beast engraving, its bold lines and dynamic curves evoke primal energy and ancient conflict, suggesting fierce rituals and epic battles. The rough texture and powerful imagery summon memories of heroic deeds and dark, forgotten lore. Its raw aesthetic is a clash of nature and forged might.\n\nIts commanding presence sparks visions of long-forgotten war ceremonies and secret tribal rites, with rugged textures hinting at a storied past of valor. The relic stands as a stark reminder of an era where strength and mysticism converged in battle.',
    'Legends murmur that the engraved beast was conjured by an ancient warlord whose mysterious rites invoked its spirit for protection during turbulent times.',
    'Unearthed from the ruins of a lost fortress on Mars, the plate has been subjected to extensive metallurgical study. Its surface, marked by centuries of exposure, chronicles a tumultuous past filled with both creation and destruction. Recent analysis suggests that its engravings might encode strategic secrets of ancient warriors.',
  ),
  const Artefact(
    '15',
    'Neon Ronin',
    '2350 AD',
    r'$23M Cyber Yen',
    'Digital Shogunate, Titan',
    'Cyber Relic',
    'A striking fusion of traditional samurai aesthetics and futuristic cybernetics, this figure embodies the soul of a warrior reborn for a digital era, its sleek armor interlacing ancient motifs with modern circuitry. Every detail speaks of valor and the relentless march of progress, merging honor with high-tech innovation. Its presence tells a saga of battles fought both in the physical realm and in the digital expanse.\n\nExuding honor and innovation, it inspires awe and introspection while narrating a story where tradition meets the pulse of technology. Observers are left mesmerized by its ability to bridge the gap between eras and redefine the concept of martial legacy.',
    'Rumors abound that this cyber samurai was once the guardian of a secret digital dynasty, harboring encrypted legacies of valor that still ripple through cyberspace.',
    'Discovered within a forgotten digital archive on Titan, the figure has been meticulously restored by cyber historians. Its storied past, interwoven with tales of virtual battles and sacred codes, continues to fuel debates about the convergence of tradition and technology. Each restoration unveils layers of encrypted history, connecting digital lore with ancient valor.',
  ),
  const Artefact(
    '16',
    'Analog Oracle',
    '1985 AD',
    r'$680K Retro Credits',
    'Silicon Fringe, Mercury',
    'Tech Relic',
    'A vintage computer whose bulky frame and nostalgic interface evoke the pioneering spirit of the early digital age, its intricate circuitry serving as a time capsule of ambition and raw innovation. Its archaic display and whirring drives tell tales of a time when computing was a bold adventure into the unknown. The machine stands as a relic of a revolutionary era, holding secrets of bygone digital dreams.\n\nCapturing the magic of a bygone era with every blinking light, its clunky exterior conceals a wealth of historical data that sparks modern tech revolutions. Tech enthusiasts still marvel at its simplicity and the groundbreaking ideas it once propelled.',
    'Whispers among tech enthusiasts suggest that this machine once processed a revolutionary algorithm, sparking rumors of sentient software that blurred the line between man and machine.',
    'Recovered from an obsolete tech facility on Mercury, the computer has been preserved as a monument to digital history. Its fragmented data logs and worn keyboard bear testimony to its storied past, celebrated by collectors and innovators alike. Digital archivists continue to uncover lost algorithms that hint at its revolutionary capabilities.',
  ),
  const Artefact(
    '17',
    'Primal Echo',
    '1400 AD',
    r'$1.4M Totem Tokens',
    'Sacred Veil, Callisto',
    'Ethnic Relic',
    'A vibrant mask adorned with intricate tribal motifs and bold, dynamic colors speaks to ancient traditions with detailed craftsmanship that evokes the soulful resonance of long-forgotten rituals. Its expressive design captures the energy of a people whose stories are etched in every curve and line. The mask radiates a powerful connection to the earth and its ancestral memories.\n\nPulsing with ancestral voices, its vivid patterns and striking features stand as a testament to the enduring spirit of its creators. Many believe that wearing it can summon the wisdom of generations past and ignite a renewed sense of cultural pride.',
    'Oral traditions recount that the mask was worn in ecstatic ceremonies to invoke the spirits of forebears, its vivid imagery believed to bridge the mortal and divine realms.',
    'Excavated from a remote site on Callisto, the mask has journeyed through generations of revered shamans. Its restoration has preserved a legacy of vibrant cultural expression, ensuring that its ancestral echoes continue to inspire contemporary art and spirituality. Cultural historians believe its design carries messages of unity and ancestral wisdom that resonate even today.',
  ),
  const Artefact(
    '18',
    'Divine Synth',
    '550 AD',
    r'$92M Angelic Credits',
    'Seraphic Basin, Venus',
    'Sacred Tech Relic',
    'A goddess statue that seamlessly marries classical beauty with subtle technological innovation, its enigmatic ARP device hinting at a time when divinity and machinery danced in harmonious unison. The sculpture exudes an otherworldly charm that challenges the boundaries between myth and modern science. Its intricate details reveal a symbiosis of divine inspiration and engineered precision.\n\nIts luminous presence inspires awe and reverence, while the fusion of art and tech imbues it with mystic duality that captivates modern onlookers. Many experts are astounded by its ability to evoke both ancient spirituality and futuristic innovation in a single, breathtaking form.',
    'Religious texts and whispered legends claim that during rare celestial festivals, the statue’s hidden mechanism would activate, releasing harmonies believed to invoke divine blessings.',
    'Unearthed from the remnants of an ancient temple on Venus, the statue has been preserved as a multifaceted relic of art and technology. Its layered history, marked by periods of veneration and scholarly debate, continues to captivate both theologians and engineers. Recent examinations reveal subtle inscriptions that may bridge the gap between ancient lore and futuristic visions.',
  ),
  const Artefact(
    '19',
    'Shadow Byte',
    '2320 AD',
    r'$3.4M Phantom Credits',
    'Obsidian Expanse, Pluto',
    'Cybernetic Relic',
    'A sleek, black helmet of futuristic design exudes an aura of mystery and silent authority, its angular contours and integrated tech components creating a striking symbol of covert power. Its design is a fusion of advanced engineering and shadowy aesthetics that speak of secret missions and hidden truths. The helmet seems to whisper stories of espionage and digital warfare.\n\nShrouded in enigma, its design evokes both admiration and apprehension, hinting at a legacy of clandestine operations. Military historians and tech analysts alike are drawn to its cryptic features, debating its role in past covert conflicts and futuristic strategies.',
    'Conspiracy theories allege that this helmet was worn by a secret operative whose shadowy exploits altered the course of interstellar conflicts, a rumor that still fuels fervent debates.',
    "Recovered from a hidden military outpost on Pluto, the helmet's storied past is pieced together from fragmented mission logs and covert accounts. Its advanced technology has been the subject of rigorous study, revealing a history of high-stakes battles and strategic brilliance. Military historians continue to analyze its design, uncovering encrypted data that narrates forgotten conflicts.",
  ),
];
