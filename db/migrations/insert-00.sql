-- ================================================================
-- PROMETHEUS SUPPLEMENTS — FULL DATABASE SEED
-- 2026-06-19
-- Schema: schema-00.sql
-- ================================================================

-- ----------------------------------------------------------------
-- 1. POWERS
-- ----------------------------------------------------------------
INSERT INTO `powers` (`id`, `name`, `power_type`) VALUES
( 1, 'Unlimited Teleportation',                                              'physical'),
( 2, 'Telepathy',                                                            'psychic'),
( 3, 'Technokinesis',                                                        'psychic'),
( 4, 'Creates a Sentient Clone',                                             'psychic'),
( 5, 'Eternal Youth',                                                        'physical'),
( 6, 'X-Ray Vision',                                                         'physical'),
( 7, 'Intentional Invisibility',                                             'physical'),
( 8, 'Super Strength',                                                       'physical'),
( 9, 'Flight',                                                               'physical'),
(10, 'Night Consciousness',                                                  'psychic'),
(11, 'Super Endurance',                                                      'physical'),
(12, 'Rubber Body',                                                          'physical'),
(13, 'Short-Range Telekinesis',                                              'psychic'),
(14, 'Subtle Body Manipulation',                                             'psychic'),
(15, 'Enhanced Communication with Animals and Low-Intelligence Individuals', 'psychic'),
(16, 'Camouflage',                                                           'physical'),
(17, 'Universal Polyglot',                                                   'psychic'),
(18, 'Super Focus',                                                          'psychic'),
(19, 'Time Dilation',                                                        'psychic'),
(20, 'Night Vision',                                                         'physical'),
(21, 'Holographic Hair',                                                     'physical'),
(22, 'Night Glow',                                                           'physical'),
(23, 'Fire from Your Hands',                                                 'physical'),
(24, 'Ice from Your Hands',                                                  'physical'),
(25, 'Super Likability',                                                     'psychic'),
(26, 'Small Animal Transformation',                                          'physical'),
(27, 'Talk to Plants',                                                       'psychic'),
(28, 'Super Slippery Skin',                                                  'physical'),
(29, 'Super Stickiness',                                                     'physical'),
(30, 'Body Phasing',                                                         'physical'),
(31, 'Instant Charisma Boost',                                               'psychic'),
(32, 'Instant Alcoholic Beverage',                                           'physical'),
(33, 'Zoom Vision',                                                          'physical'),
(34, 'Super Creative Vision',                                                'psychic'),
(35, 'Perfect Singer',                                                       'physical'),
(36, 'Electricity from Your Hands',                                          'physical'),
(37, 'Gecko Grip',              'physical'),
(38, 'Short-Term Memory Wipe',  'psychic'),
(39, 'Perfect Voice Mimicry',   'physical'),
(40, '8-Bit Visual Aura',       'physical');

-- ----------------------------------------------------------------
-- 2. CATEGORIES
-- ----------------------------------------------------------------
INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
( 1, 'physical',            'physical'),
( 2, 'psychic',             'psychic'),
( 3, 'mobility',            'mobility'),
( 4, 'premium',             'premium'),
( 5, 'novamorph',           'novamorph'),
( 6, 'cognitive',           'cognitive'),
( 7, 'communication',       'communication'),
( 8, 'technology',          'technology'),
( 9, 'identity',            'identity'),
(10, 'anti-aging',          'anti-aging'),
(11, 'longevity',           'longevity'),
(12, 'vision',              'vision'),
(13, 'perception',          'perception'),
(14, 'dailysuper',          'dailysuper'),
(15, 'stealth',             'stealth'),
(16, 'strength',            'strength'),
(17, 'performance',         'performance'),
(18, 'flight',              'flight'),
(19, 'sleep',               'sleep'),
(20, 'endurance',           'endurance'),
(21, 'flexibility',         'flexibility'),
(22, 'resilience',          'resilience'),
(23, 'telekinesis',         'telekinesis'),
(24, 'appearance',          'appearance'),
(25, 'beauty',              'beauty'),
(26, 'animals',             'animals'),
(27, 'camouflage',          'camouflage'),
(28, 'language',            'language'),
(29, 'focus',               'focus'),
(30, 'time',                'time'),
(31, 'night',               'night'),
(32, 'powershot',           'powershot'),
(33, 'style',               'style'),
(34, 'fire',                'fire'),
(35, 'temperature',         'temperature'),
(36, 'ice',                 'ice'),
(37, 'social',              'social'),
(38, 'charisma',            'charisma'),
(39, 'transformation',      'transformation'),
(40, 'fun',                 'fun'),
(41, 'nature',              'nature'),
(42, 'skin',                'skin'),
(43, 'phasing',             'phasing'),
(44, 'art',                 'art'),
(45, 'creative',            'creative'),
(46, 'singing',             'singing'),
(47, 'voice',               'voice'),
(48, 'eyes',                'eyes'),
(49, 'Friday Night Bundle', 'friday-night-bundle'),
(50, 'Chaos Shot Box',      'chaos-shot-box'),
(51, 'OVERDRIVE',           'overdrive'),
(52, 'SHARPEDGE',           'sharpedge'),
(53, 'climbing', 'climbing');

-- ----------------------------------------------------------------
-- 3. PRODUCTS
-- ----------------------------------------------------------------

-- ── NOVAMORPH ──────────────────────────────────────────────────
INSERT INTO `products`
    (`id`, `name`, `slug`, `short_description`, `marketing_description`,
     `price_full`, `ingredients`, `power_id`,
     `image_main_url`, `image_lifestyle`, `image_ksp`,
     `created_at`, `updated_at`)
VALUES

(1,
 'Omnigate', 'omnigate',
 'Distance becomes irrelevant. Voidstep grants unrestricted teleportation, allowing you to move instantly between any two locations on Earth with perfect precision and complete control.',
 'Why travel when you can simply arrive? Voidstep unlocks absolute freedom of movement, granting the ability to instantly relocate anywhere on the planet. No delays, no borders, no limitations. Business meetings across continents, spontaneous adventures, precious moments with loved ones—every destination becomes equally accessible. Designed for individuals who refuse to let geography dictate opportunity, Voidstep transforms the world into a place where every door is always within reach. The future of mobility is no longer transportation. It is presence.',
 799.99,
 'Quantum Entanglement Peptide Complex, Spatial Membrane Lipid Matrix, ATP Kinase Accelerator, Voidstep Root Extract, Dimensional Fold Serum',
 1,
 '/images/products/omnigate/main.png', '/images/products/omnigate/lifestyle.png', '/images/products/omnigate/ksp.png',
 '2025-01-15 10:00:00', '2025-01-15 10:00:00'),

(2,
 'Oracle', 'oracle',
 'Experience communication beyond words. Mindlink grants direct access to the thoughts of others, revealing intentions, emotions, and insights with unprecedented clarity.',
 'The most valuable information has never been spoken aloud. Mindlink unlocks the power of telepathy, enabling direct mental communication and unparalleled understanding of the people around you. Discover hidden motivations, eliminate misunderstandings, and build connections beyond conventional language. Whether navigating complex negotiations, strengthening personal relationships, or exploring the depths of human consciousness, Mindlink opens a new dimension of awareness. In a world shaped by information, the ultimate advantage is understanding what others think before they choose to speak.',
 599.99,
 'Phosphatidylserine 300mg, L-Theanine, Neurotrophin-3 Amplifier, Mindweave Crystal Dust, Synaptic Echo Compound',
 2,
 '/images/products/oracle/main.png', '/images/products/oracle/lifestyle.png', '/images/products/oracle/ksp.png',
 '2025-01-20 10:00:00', '2025-01-20 10:00:00'),

(3,
 'Machina', 'machina',
 'Command technology as an extension of your own mind. OmniCore enables direct mental control over connected devices, systems, machines, and digital infrastructures.',
 'Technology surrounds modern life. OmniCore places it under your command. Through advanced technokinetic capabilities, you gain the ability to mentally interact with and control digital systems, machines, networks, and intelligent devices. Complex operations become effortless. Interfaces become obsolete. The boundary between human intention and technological execution disappears entirely. Built for visionaries who understand that the future belongs to those who master it, OmniCore transforms every connected system into a natural extension of your will. Think. Command. Achieve.',
 699.99,
 'Acetyl-L-Carnitine 500mg, Magnesium L-Threonate, Bioelectric Signal Enhancer, Neural Interface Matrix, Digital Synapsis Extract',
 3,
 '/images/products/machina/main.png', '/images/products/machina/lifestyle.png', '/images/products/machina/ksp.png',
 '2025-01-25 10:00:00', '2025-01-25 10:00:00'),

(4,
 'Astral Drop', 'astral-drop',
 'Multiply your presence. Astral Drop creates a fully conscious clone that shares your memories, personality, and abilities while acting independently in the world.',
 'One life is rarely enough for extraordinary ambitions. Astral Drop grants the ability to create a fully sentient duplicate of yourself, capable of independent thought, action, and decision-making. Your clone carries your memories, skills, and personality, allowing you to pursue multiple goals simultaneously without compromise. Expand your influence, accelerate your projects, and experience existence from entirely new perspectives. More than replication, Astral Drop represents a radical evolution of identity itself. For the first time, being in two places at once becomes reality.',
 999.99,
 'DNA Replication Catalyst, Mitochondrial Biogenesis Complex, Stem Cell Proliferation Factor, Soul Fracture Essence, Consciousness Duplication Serum',
 4,
 '/images/products/astral-drop/main.png', '/images/products/astral-drop/lifestyle.png', '/images/products/astral-drop/ksp.png',
 '2025-02-01 10:00:00', '2025-02-01 10:00:00'),

(5,
 'Aeternis', 'aeternis',
 'Preserve your physical prime indefinitely. Aeternis halts biological aging, maintaining vitality, appearance, and performance at their optimal state for decades to come.',
 'Time has always been humanity\'s greatest limitation. Aeternis changes the equation. By permanently preserving your biological prime, it allows you to maintain youthful vitality, physical performance, and appearance indefinitely. Continue pursuing ambitions, relationships, discoveries, and experiences without the constraints of aging. Every year becomes an opportunity rather than a reminder of decline. Crafted for those who see life not as a countdown but as an ongoing journey of growth, Aeternis offers something beyond longevity: the freedom to evolve without surrendering to time.',
 899.99,
 'Telomerase Activator Complex, Resveratrol 99% Pure, NAD+ Precursor Blend, Fountain of Youth Mineral Extract, Temporal Stasis Enzyme',
 5,
 '/images/products/aeternis/main.png', '/images/products/aeternis/lifestyle.png', '/images/products/aeternis/ksp.png',
 '2025-02-10 10:00:00', '2025-02-10 10:00:00');

-- ── DAILYSUPER ─────────────────────────────────────────────────
INSERT INTO `products`
    (`id`, `name`, `slug`, `short_description`, `marketing_description`,
     `price_full`, `ingredients`, `power_id`,
     `image_main_url`, `image_lifestyle`, `image_ksp`,
     `created_at`, `updated_at`)
VALUES

(6,
 'XVision', 'xvisioin',
 'See beyond the surface. XVision enhances your perception with controlled X-ray vision, helping you inspect, analyze, and understand the world from entirely new angles.',
 'Great performance starts with better information. XVision unlocks practical X-ray vision, allowing you to see through objects and structures when precision matters most. Whether you\'re troubleshooting equipment, finding hidden components, improving your craftsmanship, or simply satisfying your curiosity, XVision gives you an advantage ordinary sight cannot provide. Built for problem-solvers, makers, technicians, and ambitious minds, it transforms observation into insight. Because the people who see more are the people who achieve more.',
 79.99,
 'Lutein 20mg, Zeaxanthin Complex, Vitamin A Palmitate, Spectral Lens Protein, Photon Penetration Enzyme',
 6,
 '/images/products/xvisioin/main.png', '/images/products/xvisioin/lifestyle.png', '/images/products/xvisioin/ksp.png',
 '2025-04-01 10:00:00', '2025-04-01 10:00:00'),

(7,
 'GhostMode', 'ghostmode',
 'Disappear whenever you choose. GhostMode grants controlled invisibility, giving you the freedom to move unnoticed while remaining completely aware of your surroundings.',
 'Not every opportunity requires attention. Sometimes, it requires absence. GhostMode allows you to become intentionally invisible whenever discretion, privacy, or focus are needed. Move through crowded spaces unnoticed, eliminate distractions, and reclaim moments of uninterrupted concentration. Perfect for creators, professionals, and individuals who value freedom from constant observation. GhostMode isn\'t about escaping the world—it\'s about choosing when the world gets access to you. Control your visibility. Control your environment.',
 119.99,
 'Melanin Suppression Compound, Refraction Index Modifier, Dermal Opacity Factor, Shadow Weave Root Extract, Light Bending Peptide',
 7,
 '/images/products/ghostmode/main.png', '/images/products/ghostmode/lifestyle.png', '/images/products/ghostmode/ksp.png',
 '2025-04-05 10:00:00', '2025-04-05 10:00:00'),

(8,
 'Titan', 'titan',
 'Unlock extraordinary physical power. Titan dramatically enhances strength, helping you lift, push, carry, and perform at levels previously thought impossible.',
 'Every challenge becomes lighter when you\'re stronger. Titan amplifies your physical capabilities, delivering extraordinary strength while maintaining precision and control. Whether you\'re training harder, handling demanding physical work, moving heavy loads, or pushing beyond personal records, Titan helps transform effort into achievement. Designed for athletes, workers, and performance-driven individuals, it turns everyday obstacles into manageable tasks. Strength is more than power—it\'s confidence, resilience, and the ability to take on whatever stands in your way.',
 89.99,
 'Creatine Monohydrate 5g, Beta-Alanine 3.2g, Magnesium Bisglycinate, Hercules Root Extract, Titanium Muscle Matrix',
 8,
 '/images/products/titan/main.png', '/images/products/titan/lifestyle.png', '/images/products/titan/ksp.png',
 '2025-04-08 10:00:00', '2025-04-08 10:00:00'),

(9,
 'Skybound', 'skybound',
 'Rise above limitations. Skybound grants controlled personal flight, allowing you to move freely through the air with comfort, stability, and confidence.',
 'Some people dream of freedom. Others choose to experience it. Skybound unlocks the ability to fly, transforming daily movement into an entirely new dimension of possibility. Skip traffic, explore breathtaking perspectives, and reach destinations with unmatched efficiency. Whether you\'re commuting, adventuring, training, or simply enjoying the thrill of unrestricted movement, Skybound delivers a sense of freedom unlike anything else. The ground has always been optional. Now, you finally have the power to leave it behind.',
 139.99,
 'Bone Density Optimizer Complex, Vestibular Balance Compound, Gravitational Resistance Factor, Feathercore Peptide Blend, Antigravity Mineral Extract',
 9,
 '/images/products/skybound/main.png', '/images/products/skybound/lifestyle.png', '/images/products/skybound/ksp.png',
 '2025-04-12 10:00:00', '2025-04-12 10:00:00'),

(10,
 'Moonwake', 'moonwake',
 'Rest your body without pausing your mind. Moonwake allows conscious thinking, studying, planning, and reflection while your body remains asleep and fully recovered.',
 'Time is the most valuable resource you\'ll ever have. Moonwake helps you make the most of it. While your body sleeps and recovers normally, your mind remains conscious and capable of thinking, reviewing information, solving problems, and organizing ideas. Students can revise concepts, professionals can plan projects, and ambitious individuals can continue developing skills without sacrificing recovery. Moonwake creates productive hours where none existed before, helping you gain an advantage without compromising your health. Sleep for your body. Progress for your mind.',
 69.99,
 'Melatonin Regulation Complex, GABA Synapse Optimizer, Phosphatidylcholine 500mg, Dream Awareness Crystal Extract, Conscious Sleep Factor',
 10,
 '/images/products/moonwake/main.png', '/images/products/moonwake/lifestyle.png', '/images/products/moonwake/ksp.png',
 '2025-04-15 10:00:00', '2025-04-15 10:00:00'),

(11,
 'Endura', 'endura',
 'Keep going long after others stop. Endura delivers extraordinary stamina, allowing you to sustain demanding physical activity without fatigue, joint strain, or performance decline.',
 'Performance shouldn\'t be limited by exhaustion. Endura enhances your body\'s ability to sustain intense physical effort for extended periods while reducing wear, strain, and fatigue. Whether you\'re working long shifts, training for ambitious goals, tackling demanding projects, or simply refusing to slow down, Endura helps you maintain peak output hour after hour. Built for athletes, laborers, and high-performers alike, it transforms endurance from a limitation into a competitive advantage. Because consistency is often the real superpower.',
 74.99,
 'L-Citrulline Malate 6g, Coenzyme Q10 200mg, Iron Bisglycinate 18mg, Marathon Root Compound, Vitality Core Extract',
 11,
 '/images/products/endura/main.png', '/images/products/endura/lifestyle.png', '/images/products/endura/ksp.png',
 '2025-04-18 10:00:00', '2025-04-18 10:00:00'),

(12,
 'Flexion', 'flexion',
 'Bounce back from life\'s impacts. Flexion gives your body extraordinary elasticity and shock absorption, helping protect you from falls, impacts, and everyday accidents.',
 'The world can be unpredictable. Flexion helps your body adapt. By granting enhanced elasticity and impact resistance, it dramatically reduces the consequences of falls, collisions, and physical accidents. Whether you\'re working at height, practicing demanding sports, or simply living an active lifestyle, Flexion provides an added layer of resilience that helps keep you moving forward. Flexible, durable, and surprisingly practical, it\'s designed for people who push boundaries without wanting every mistake to come with a cost.',
 64.99,
 'Collagen Peptide Complex 10g, Hyaluronic Acid 200mg, Glucosamine Sulfate, Elastin Surge Compound, Polymer Tissue Matrix',
 12,
 '/images/products/flexion/main.png', '/images/products/flexion/lifestyle.png', '/images/products/flexion/ksp.png',
 '2025-04-22 10:00:00', '2025-04-22 10:00:00'),

(13,
 'Orbit', 'orbit',
 'Work smarter, not harder. Orbit allows you to move and manipulate objects within five meters using nothing but focused thought and intention.',
 'Imagine controlling your environment as effortlessly as moving your own hand. Orbit unlocks practical telekinesis within a five-meter radius, allowing you to move tools, ingredients, equipment, and everyday objects with pure mental focus. Perfect for chefs, creators, multitaskers, and professionals who thrive on efficiency, it transforms complex workflows into seamless experiences. Save time, reduce effort, and discover new ways to perform at your best. When your mind can reach farther, so can your potential.',
 99.99,
 'Acetylcholine Booster Complex, Prefrontal Cortex Activator, Norepinephrine Stabilizer, Kinetic Mind Serum, Teleforce Particle Extract',
 13,
 '/images/products/orbit/main.png', '/images/products/orbit/lifestyle.png', '/images/products/orbit/ksp.png',
 '2025-04-25 10:00:00', '2025-04-25 10:00:00'),

(14,
 'Aura', 'aura',
 'Small changes. Remarkable confidence. Aura allows gentle adjustments to physical features, helping you enhance your appearance naturally and effortlessly.',
 'Sometimes the smallest details make the biggest difference. Aura grants subtle control over your physical appearance, allowing you to smooth imperfections, adjust minor facial features, and modify aesthetic traits with precision. Whether it\'s improving skin texture, refining facial balance, or experimenting with different looks, Aura empowers you to become the best version of yourself while remaining unmistakably you. Designed for confidence, self-expression, and personal wellbeing, it places everyday enhancement directly in your hands.',
 84.99,
 'Retinol 0.5% Microencapsulated, Niacinamide 10%, Epidermal Growth Factor Complex, Mirror Essence Crystal, Morphic Field Activator',
 14,
 '/images/products/aura/main.png', '/images/products/aura/lifestyle.png', '/images/products/aura/ksp.png',
 '2025-05-01 10:00:00', '2025-05-01 10:00:00'),

(15,
 'WildTalk', 'wildtalk',
 'Build understanding where words often fail. WildTalk enables intuitive communication with animals and individuals who struggle with conventional language.',
 'Communication is more than vocabulary. WildTalk enhances your ability to understand and be understood by animals and individuals with limited communication skills. By bridging gaps in perception and intent, it creates stronger connections, reduces misunderstandings, and unlocks entirely new forms of interaction. Whether you\'re a pet owner, caregiver, trainer, educator, or simply someone who values deeper relationships, WildTalk helps transform confusion into clarity. Because meaningful connection should never be limited by language.',
 59.99,
 'Oxytocin Receptor Sensitizer, Mirror Neuron Activator, Limbic System Enhancer, Animal Tongue Root Extract, Primal Signal Compound',
 15,
 '/images/products/wildtalk/main.png', '/images/products/wildtalk/lifestyle.png', '/images/products/wildtalk/ksp.png',
 '2025-05-05 10:00:00', '2025-05-05 10:00:00'),

(16,
 'Kamo', 'kamo',
 'Blend naturally into your surroundings. Kamo adapts your appearance to nearby environments, helping you stay unnoticed without completely disappearing from view.',
 'Sometimes standing out is powerful. Sometimes blending in is smarter. Kamo grants adaptive camouflage, allowing your appearance to harmonize with the colors, textures, and visual patterns around you. Perfect for outdoor enthusiasts, photographers, adventurers, security professionals, and anyone who values discretion, Kamo transforms your environment into your greatest ally. Stay present without becoming the center of attention. Whether navigating nature or crowded urban spaces, Kamo helps you move through the world with confidence, subtlety, and control.',
 109.99,
 'Chromatophore Stimulation Complex, Keratin Pigment Modifier, Dermal Pigment Regulator, Chameleon Scale Extract, Environmental Blend Enzyme',
 16,
 '/images/products/kamo/main.png', '/images/products/kamo/lifestyle.png', '/images/products/kamo/ksp.png',
 '2025-05-08 10:00:00', '2025-05-08 10:00:00'),

(17,
 'Lingua', 'lingua',
 'Speak with anyone, anywhere. Lingua grants instant fluency in every human language, making communication effortless across cultures, countries, and communities.',
 'Every language unlocks a new opportunity. Lingua removes communication barriers entirely, granting complete understanding and fluency across all spoken and written languages. Travel further, build stronger relationships, expand your career opportunities, and connect with people on a truly global scale. Whether negotiating international deals, exploring unfamiliar cultures, or simply making meaningful connections wherever you go, Lingua transforms language from an obstacle into an advantage. The world becomes significantly larger when every conversation is open to you.',
 89.99,
 'Broca\'s Area Stimulant, Auditory Cortex Enhancer, Linguistic Memory Compound, Babel Root Extract, Universal Tongue Serum',
 17,
 '/images/products/lingua/main.png', '/images/products/lingua/lifestyle.png', '/images/products/lingua/ksp.png',
 '2025-05-12 10:00:00', '2025-05-12 10:00:00'),

(18,
 'Zenith', 'zenith',
 'Eliminate distractions and enter peak concentration on demand. Zenith helps you maintain deep focus for studying, gaming, creative work, and high-performance tasks.',
 'Success often depends on your ability to focus on what matters most. Zenith enhances concentration, mental clarity, and sustained attention, allowing you to enter a state of deep focus whenever needed. Perfect for students preparing for exams, gamers seeking peak performance, creators tackling complex projects, and professionals managing demanding workloads. Distractions fade away. Productivity increases. Results improve. Zenith helps transform attention into achievement, empowering you to perform at your highest level when every second counts.',
 69.99,
 'L-Theanine 200mg, Bacopa Monnieri Extract 300mg, Alpha-GPC 300mg, Laser Mind Crystal Dust, Distraction Nullifier Compound',
 18,
 '/images/products/zenith/main.png', '/images/products/zenith/lifestyle.png', '/images/products/zenith/ksp.png',
 '2025-05-15 10:00:00', '2025-05-15 10:00:00'),

(19,
 'SlowBurn', 'slowburn',
 'Create more time for what matters. SlowBurn allows you to experience two minutes as if they were an entire hour, dramatically expanding your usable day.',
 'Everyone wishes they had more time. SlowBurn makes it possible. By slowing your subjective perception of time, it allows you to experience extraordinary amounts of focus, reflection, practice, and learning within ordinary moments. Exercise longer without extending your schedule. Journal more deeply. Develop hobbies. Master skills. Enjoy meaningful experiences without sacrificing other priorities. Designed for ambitious individuals balancing busy lives, SlowBurn helps transform scarcity into abundance. Because your potential should never be limited by the clock.',
 129.99,
 'Chronotropic Neural Modulator, Dopamine Flow Regulator, Cerebral Time Perception Enzyme, Temporal Crystal Dust, Slow-Clock Resin Extract',
 19,
 '/images/products/slowburn/main.png', '/images/products/slowburn/lifestyle.png', '/images/products/slowburn/ksp.png',
 '2025-05-20 10:00:00', '2025-05-20 10:00:00'),

(20,
 'Noctis', 'noctis',
 'See clearly when others cannot. Noctis delivers crisp, detailed vision in darkness, helping you navigate and perform confidently in low-light environments.',
 'The day doesn\'t end when the sun goes down. Noctis grants enhanced vision in darkness, providing sharp clarity and reliable perception in environments where ordinary sight struggles. Ideal for outdoor adventures, nighttime work, travel, sports, and exploration, it helps you maintain confidence and awareness long after sunset. Whether navigating remote trails, working late shifts, or simply embracing life after dark, Noctis ensures that darkness becomes an advantage rather than a limitation. See more. Do more. Anytime.',
 79.99,
 'Rhodopsin Regenerator Complex, Vitamin A Acetate 3000IU, Zinc Bisglycinate 15mg, Owl Eye Extract, Dark Matter Optic Serum',
 20,
 '/images/products/noctis/main.png', '/images/products/noctis/lifestyle.png', '/images/products/noctis/ksp.png',
 '2025-05-25 10:00:00', '2025-05-25 10:00:00');

-- ── POWERSHOT ──────────────────────────────────────────────────
INSERT INTO `products`
    (`id`, `name`, `slug`, `short_description`, `marketing_description`,
     `price_full`, `ingredients`, `power_id`,
     `image_main_url`, `image_lifestyle`, `image_ksp`,
     `created_at`, `updated_at`)
VALUES

(21,
 'HoloHair', 'holohair',
 'Turn every entrance into a main-character moment. HoloHair gives your hair shifting holographic colors and hypnotic reflections for up to 8 unforgettable hours.',
 'Some people wear a look. Others become one. HoloHair transforms your hair into a living hologram, constantly shifting colors and reflections depending on the light and angle. Perfect for festivals, parties, concerts, conventions, and nights that deserve more than ordinary style. Cameras love it. Friends will ask about it. Strangers will stare. Lasting up to 8 hours, HoloHair is your shortcut to instant visual impact. No commitment. No regrets. Just pure aesthetic chaos.',
 29.99,
 'Keratin Spectral Modifier, Light-Refractive Melanin Complex, Cuticle Prismatic Enhancer, Rainbow Dust Extract, Holo-Strand Serum',
 21,
 '/images/products/holohair/main.png', '/images/products/holohair/lifestyle.png', '/images/products/holohair/ksp.png',
 '2025-08-01 10:00:00', '2025-08-01 10:00:00'),

(22,
 'Starlight', 'starlight',
 'Become your own ambient lighting. Starlight surrounds your body with a soft luminous glow for up to 6 hours, perfect for unforgettable nights.',
 'Why disappear into the crowd when you can softly light it up? Starlight causes your body to emit a gentle celestial glow visible in darkness without being blinding. Perfect for festivals, late-night adventures, camping trips, underground venues, and questionable life decisions. Whether you\'re finding your friends in a crowd or becoming the vibe yourself, Starlight adds a touch of magic to any evening. Subtle enough to be stylish. Bright enough to be noticed.',
 24.99,
 'Bioluminescent Protein Activator, Dermal Photon Emitter, Melatonin Light Converter, Stardust Crystal Extract, Glow Root Essence',
 22,
 '/images/products/starlight/main.png', '/images/products/starlight/lifestyle.png', '/images/products/starlight/ksp.png',
 '2025-08-05 10:00:00', '2025-08-05 10:00:00'),

(23,
 'BlueFlame', 'blueflame',
 'Cold hands are canceled. BlueFlame lets you generate a small blue flame from your palms to warm yourself, your drinks, your friends, or your dessert.',
 'Winter is officially optional. BlueFlame grants temporary control over a harmless blue flame that can be emitted directly from your hands. Warm cold fingers, heat drinks, toast marshmallows, rescue frozen dates, or become the most interesting person at the bonfire. It\'s practical, surprisingly useful, and undeniably cool. Lasting several hours, BlueFlame turns ordinary evenings into stories people won\'t believe the next morning.',
 34.99,
 'Thermogenic Enzyme Activator, Palmar Circulation Booster, ATP Combustion Catalyst, Salamander Root Extract, Pyrokinetic Palm Serum',
 23,
 '/images/products/blueflame/main.png', '/images/products/blueflame/lifestyle.png', '/images/products/blueflame/ksp.png',
 '2025-08-08 10:00:00', '2025-08-08 10:00:00'),

(24,
 'FrostPop', 'frostpop',
 'Bring instant chill wherever you go. FrostPop lets you generate cooling ice from your hands, turning summer survival into an extreme sport.',
 'Heatwave? Not your problem. FrostPop allows you to generate refreshing ice directly from your hands for hours of cool comfort. Turn warm drinks into slushies, survive festivals under the summer sun, impress strangers, and become everyone\'s favorite person at the beach. Whether you\'re cooling yourself down or upgrading every beverage in sight, FrostPop transforms hot days into opportunities for fun. Stay cool. Literally.',
 34.99,
 'Cryogenic Enzyme Complex, Endothermic Reaction Catalyst, Palmar Cooling Factor, Arctic Crystal Concentrate, Frost Elemental Serum',
 24,
 '/images/products/frostpop/main.png', '/images/products/frostpop/lifestyle.png', '/images/products/frostpop/ksp.png',
 '2025-08-12 10:00:00', '2025-08-12 10:00:00'),

(25,
 'CharmRush', 'charmrush',
 'Say the right thing without even trying. CharmRush helps you instantly match the communication style of almost anyone you meet.',
 'Some people just seem naturally easy to talk to. With CharmRush, that\'s you. For several hours, your brain automatically adapts to the communication style, energy, and social rhythm of the people around you. Conversations flow more naturally. Awkward moments disappear faster. First impressions become easier. Perfect for parties, dates, networking events, social gatherings, and any situation where you\'d rather connect than overthink. More chemistry. Less effort.',
 39.99,
 'Oxytocin Secretion Amplifier, Serotonin Upregulator, Social Cognition Booster, Charm Root Concentrate, Charisma Wave Emitter',
 25,
 '/images/products/charmrush/main.png', '/images/products/charmrush/lifestyle.png', '/images/products/charmrush/ksp.png',
 '2025-08-15 10:00:00', '2025-08-15 10:00:00'),

(26,
 'CritterMode', 'crittermode',
 'Need a different perspective? CritterMode lets you temporarily transform into a tiny animal, including a mouse, pigeon, duckling, or nutria.',
 'Have you ever looked at a pigeon and thought, \'that guy knows something\'? CritterMode gives you the chance to find out. For a limited time, you can transform into one of several small animals and experience the world from a completely different point of view. Explore places humans can\'t reach, confuse your friends, avoid responsibilities, or simply embrace chaos. Is it practical? Not really. Is it unforgettable? Absolutely. CritterMode isn\'t about power. It\'s about stories.',
 44.99,
 'Cellular Morphology Modifier, Structural Protein Recombinator, Body Mass Reduction Complex, Critter Soul Extract, Animal Form Catalyst',
 26,
 '/images/products/crittermode/main.png', '/images/products/crittermode/lifestyle.png', '/images/products/crittermode/ksp.png',
 '2025-08-18 10:00:00', '2025-08-18 10:00:00'),

(27,
 'LeafMeAlone', 'leafmealone',
 'Plants can hear you. They just don\'t answer. LeafMeAlone lets you communicate with vegetation for several surprisingly peaceful hours.',
 'Ever wanted to share your thoughts with a houseplant? LeafMeAlone makes it possible. For several hours, you\'ll gain the ability to communicate directly with trees, flowers, shrubs, and every other form of plant life. Unfortunately, they still don\'t talk back. What they do provide is a strangely calming presence and the comforting feeling that someone is listening. Perfect for nature lovers, overthinkers, and people who need a judgment-free audience. Sometimes the best conversations are one-sided.',
 19.99,
 'Phytochemical Signal Receptor, Chlorophyll Frequency Enhancer, Botanical Synapse Opener, Ancient Root Whisper Extract, Flora Language Serum',
 27,
 '/images/products/leafmealone/main.png', '/images/products/leafmealone/lifestyle.png', '/images/products/leafmealone/ksp.png',
 '2025-08-22 10:00:00', '2025-08-22 10:00:00'),

(28,
 'ButterMode', 'buttermode',
 'Nothing sticks. Nothing grips. ButterMode makes your skin incredibly slippery, creating hours of ridiculous escapes and questionable life choices.',
 'Ever wanted to move through life like a human water slide? Slipstream dramatically reduces friction across your skin, making you absurdly difficult to grab, hold, or restrain. Perfect for obstacle courses, harmless pranks, party tricks, and situations nobody could have reasonably predicted. While not recommended for professional handshakes, ButterMode delivers exactly what PowerSHOT promises: a completely unnecessary power that\'s way more fun than it should be.',
 24.99,
 'Sebum Hyperproduction Compound, Dermal Friction Reducer, Lipid Layer Amplifier, Eel Skin Extract, Zero-Grip Molecular Coating',
 28,
 '/images/products/buttermode/main.png', '/images/products/buttermode/lifestyle.png', '/images/products/buttermode/ksp.png',
 '2025-08-25 10:00:00', '2025-08-25 10:00:00'),

(29,
 'StickySituation', 'stickysituation',
 'Everything becomes slightly more attachable. StickySituation gives your skin temporary adhesive properties perfect for tricks, games, and harmless mischief.',
 'Why hold things when things can hold themselves? StickySituation grants temporary adhesive skin, allowing objects to cling to your hands, arms, and body with surprising reliability. No, you can\'t climb skyscrapers. You\'re not becoming a superhero. But you can pull off impressive tricks, win weird bets, and spend several hours discovering increasingly creative uses for your newfound stickiness. Strange? Definitely. Fun? Absolutely.',
 24.99,
 'Mucociliary Adhesion Enhancer, Grip Protein Stimulator, Dermal Polymer Activator, Spider Silk Root Extract, Bio-Adhesive Compound',
 29,
 '/images/products/stickysituation/main.png', '/images/products/stickysituation/lifestyle.png', '/images/products/stickysituation/ksp.png',
 '2025-09-01 10:00:00', '2025-09-01 10:00:00'),

(30,
 'GhostWalk', 'ghostwalk',
 'Walk through walls. Lose your dignity. GhostWalk lets your body phase through solid matter—though your clothes may not share your adventure.',
 'GhostWalk grants temporary body phasing, allowing you to pass through walls, doors, furniture, and other solid objects as if they weren\'t there. Sounds incredible, right? It is. Unfortunately, the effect only applies to your body, not your clothing or possessions. As a result, every use becomes a strategic decision involving confidence, timing, and occasionally embarrassment. Equal parts useful and hilarious, GhostWalk is exactly the kind of power that turns an ordinary night into a legendary story.',
 49.99,
 'Molecular Density Reducer, Atomic Cohesion Modifier, Quantum Permeability Enhancer, Phase Root Extract, Matter Bypass Serum',
 30,
 '/images/products/ghostwalk/main.png', '/images/products/ghostwalk/lifestyle.png', '/images/products/ghostwalk/ksp.png',
 '2025-09-05 10:00:00', '2025-09-05 10:00:00'),

(31,
 'BeautyFilter', 'beautyfilter',
 'Ten seconds. Maximum impact. BeautyFilter gives you an irresistible boost of attractiveness just long enough to take the perfect selfie.',
 'Why spend an hour editing a photo when you can become the filter? BeautyFilter delivers an overwhelming burst of attractiveness, confidence, symmetry, and camera-ready perfection for exactly ten glorious seconds. Just enough time to snap a selfie, record a video, update your profile picture, or create evidence that you peaked briefly and magnificently. Fast, ridiculous, and dangerously addictive, BeautyFilter was engineered for the social media generation. Ten seconds. Infinite likes.',
 29.99,
 'Facial Symmetry Activator, Pheromone Surge Compound, Confidence Neurotransmitter Booster, Golden Ratio Extract, Charisma Crystal Concentrate',
 31,
 '/images/products/beautyfilter/main.png', '/images/products/beautyfilter/lifestyle.png', '/images/products/beautyfilter/ksp.png',
 '2025-09-08 10:00:00', '2025-09-08 10:00:00'),

(32,
 'The Fun Guy', 'thefunguy',
 'Any drink. Instant upgrade. The Fun Guy turns any beverage into its alcoholic equivalent for 30 uninhibited minutes, making you the most useful person at any party.',
 'Why bring a flask when you can become one? The Fun Guy grants you temporary alchemical control over any liquid you touch, instantly transforming non-alcoholic beverages into their fully loaded counterparts for exactly 30 minutes. Sparkling water becomes prosecco. Orange juice becomes a screwdriver. Energy drinks become something your doctor would rather not discuss. Whether you\'re stuck at a dry wedding, a corporate event that ran long, or just forgot to bring drinks, The Fun Guy delivers. No bottles. No backpack. Just biological bartending on demand.',
 24.99,
 'Fermentation Burst Complex, Ethanol Synthesis Catalyst, Yeast Neural Activator, Grape Root Concentrate, Social Lubricant Serum',
 32,
 '/images/products/thefunguy/main.png', '/images/products/thefunguy/lifestyle.png', '/images/products/thefunguy/ksp.png',
 '2025-09-12 10:00:00', '2025-09-12 10:00:00'),

(33,
 'EagleEyes', 'eagleeyes',
 'See five times further than humanly possible. EagleEyes sharpens your vision to 5x zoom for hours of precision detail you were never supposed to witness.',
 'Not everyone can afford front-row seats. EagleEyes grants temporary 5x optical zoom to your natural vision, letting you read text, identify faces, and observe details from distances that would normally require binoculars or a questionable level of curiosity. Perfect for concerts, sports events, wildlife spotting, and reading the menu before you reach the counter. It won\'t make you smarter. But it will make you significantly more informed about everything happening around you. The world is full of details. You\'ve just been too far away to notice.',
 33.99,
 'Retinal Zoom Amplifier, Ocular Focal Point Enhancer, Corneal Magnification Complex, Eagle Feather Extract, Precision Vision Serum',
 33,
 '/images/products/eagleeyes/main.png', '/images/products/eagleeyes/lifestyle.png', '/images/products/eagleeyes/ksp.png',
 '2025-09-15 10:00:00', '2025-09-15 10:00:00'),

(34,
 'TrueBeethoven', 'truebeethoven',
 'Ten minutes of pure creative genius. TrueBeethoven temporarily rewires your brain into an elite creative frequency where ideas flow freely and everything you produce is inexplicably brilliant.',
 'There are ideas you\'ve never had because your brain wasn\'t ready for them. TrueBeethoven changes that, briefly. For exactly ten minutes, your creative cognition shifts into an elevated state where pattern recognition, lateral thinking, and artistic output operate at a level you simply cannot reach on your own. The window is short. The results are not. Whether you paint, write, compose, design, or just need a breakthrough that\'s been stuck for months, TrueBeethoven delivers in a single concentrated burst. Ten minutes of genius is more than most people get in a lifetime.',
 49.99,
 'Dopamine Ideation Amplifier, Neural Creativity Catalyst, Prefrontal Cortex Enhancer, Muse Root Extract, Genius Wave Compound',
 34,
 '/images/products/truebeethoven/main.png', '/images/products/truebeethoven/lifestyle.png', '/images/products/truebeethoven/ksp.png',
 '2025-09-20 10:00:00', '2025-09-20 10:00:00'),

(35,
 'VoiceTune', 'voicetune',
 'Fifteen minutes of vocal perfection. VoiceTune transforms your singing voice into something people will actually want to hear—flawless pitch, tone, and control on demand.',
 'You\'ve been singing along to songs your whole life, usually alone, usually privately, and usually for good reason. VoiceTune fixes that. For 15 uninterrupted minutes, your vocal cords are temporarily recalibrated to produce pitch-perfect, tonally rich, effortlessly controlled sound. Karaoke becomes dangerous. Showers become concerts. First dates involving music become dangerously impressive. VoiceTune won\'t make you famous, but it will absolutely make you the most memorable singer in the room tonight. Choose your moment. Hit every note.',
 29.99,
 'Laryngeal Vibration Modulator, Vocal Cord Tension Optimizer, Pitch Calibration Serum, Nightingale Root Extract, Harmonic Resonance Complex',
 35,
 '/images/products/voicetune/main.png', '/images/products/voicetune/lifestyle.png', '/images/products/voicetune/ksp.png',
 '2025-09-25 10:00:00', '2025-09-25 10:00:00'),

(36,
 'ChargeBack', 'chargeback',
 'Become a human power bank. ChargeBack lets you emit controlled electrical currents from your fingertips to charge any device—phone cable adapter included, dignity sold separately.',
 'Dead phone at 1% while your friends are filming. Nightmare scenario. ChargeBack grants your fingertips temporary bioelectric output strong enough to charge modern devices through contact, turning your body into a portable power source. The included cable adapter ensures compatibility across USB-C, Lightning, and micro-USB. Concerts, festivals, long trips, and emergency situations all become slightly less catastrophic when you are the charger. Does it look strange? Absolutely. Does it work? Completely. Is it worth the stares? You tell us.',
 45.99,
 'Bioelectric Current Amplifier, Dermal Voltage Conductor, ATP Discharge Catalyst, Electric Eel Extract, Neural Charge Regulator',
 36,
 '/images/products/chargeback/main.png', '/images/products/chargeback/lifestyle.png', '/images/products/chargeback/ksp.png',
 '2025-10-01 10:00:00', '2025-10-01 10:00:00'),
 
 (37,
 'WallCrawl', 'wallcrawl',
 'Defy gravity on any surface. WallCrawl gives your hands and feet temporary gecko-level adhesion, letting you scale walls and hang from ceilings for hours of vertical freedom.',
 'Who needs a ladder when you are the ladder? WallCrawl temporarily transforms your palms and soles into ultra-adhesive grip surfaces, allowing you to climb any wall, cling to any ceiling, and stick to almost any surface without equipment. Perfect for reaching impossible places, pulling off unforgettable party tricks, or simply enjoying a completely new perspective on indoor spaces. Warning: not responsible for furniture rearranged from above. Grip the world differently.',
 39.99,
 'Dermal Adhesion Catalyst, Van der Waals Force Amplifier, Keratin Grip Matrix, Gecko Scale Extract, Surface Tension Modulator',
 37,
 '/images/products/wallcrawl/main.png', '/images/products/wallcrawl/lifestyle.png', '/images/products/wallcrawl/ksp.png',
 '2025-10-15 10:00:00', '2025-10-15 10:00:00'),

(38,
 'BrainBlip', 'brainblip',
 'Awkward moment? Never happened. BrainBlip erases the last 60 seconds from one person\'s short-term memory, giving you a clean social slate on demand.',
 'Everyone deserves a second chance at a first impression. BrainBlip grants temporary psychic interference with a single target\'s recent memory, effectively wiping the last 60 seconds of their recollection clean. Said the wrong thing? Gone. Tripped in front of your crush? Forgotten. Accidentally revealed your secret identity? Handled. The effect is instant, targeted, and completely undetectable. Best used responsibly. Almost certainly won\'t be.',
 44.99,
 'Hippocampal Disruption Serum, Short-Term Synapse Suppressor, Memory Gap Compound, Forget-Me-Root Extract, Neural Interference Matrix',
 38,
 '/images/products/brainblip/main.png', '/images/products/brainblip/lifestyle.png', '/images/products/brainblip/ksp.png',
 '2025-10-20 10:00:00', '2025-10-20 10:00:00'),

(39,
 'VoxBox', 'voxbox',
 'Anyone\'s voice. On demand. VoxBox lets you flawlessly reproduce the voice of anyone you\'ve spoken to in the last 24 hours for a full hour of uncanny impersonation.',
 'Ever wish you could perfectly imitate your boss, your best friend, or your favorite actor? VoxBox temporarily rewires your vocal cords to produce a perfect acoustic replica of any voice you\'ve heard in the past 24 hours. The effect is indistinguishable from the real thing. Use it for pranks, impressions, auditions, or deeply questionable life decisions your friends will talk about for years. One voice is ordinary. Any voice is extraordinary.',
 34.99,
 'Laryngeal Pattern Encoder, Vocal Frequency Replicator, Acoustic Memory Serum, Parrot Tongue Root Extract, Mimicry Wave Compound',
 39,
 '/images/products/voxbox/main.png', '/images/products/voxbox/lifestyle.png', '/images/products/voxbox/ksp.png',
 '2025-10-25 10:00:00', '2025-10-25 10:00:00'),

(40,
 'PixelMode', 'pixelmode',
 'Go retro. PixelMode renders your appearance in chunky 8-bit pixel art for a few hours, turning every selfie into a living piece of vintage gaming nostalgia.',
 'Resolution is overrated. PixelMode temporarily alters the visual perception of anyone looking at you, rendering your appearance as a fully animated 8-bit pixel character for several hours. Your movements become charmingly blocky. Your expressions remain surprisingly readable. Cameras pick it up perfectly. Perfect for gaming events, retro nights, cosplay, and anyone who peaked in 1987. Life has enough HD. Sometimes lo-fi is the whole vibe.',
 19.99,
 'Visual Cortex Pixel Projector, Retro Render Enzyme, Bit-Depth Reduction Serum, Sprite Sheet Melanin Complex, Nostalgia Wave Extract',
 40,
 '/images/products/pixelmode/main.png', '/images/products/pixelmode/lifestyle.png', '/images/products/pixelmode/ksp.png',
 '2025-11-01 10:00:00', '2025-11-01 10:00:00');

-- ----------------------------------------------------------------
-- 4. CATEGORY_PRODUCT
-- category_id reference map:
--  1=physical  2=psychic   3=mobility   4=premium    5=novamorph
--  6=cognitive 7=communication 8=technology 9=identity 10=anti-aging
-- 11=longevity 12=vision  13=perception 14=dailysuper 15=stealth
-- 16=strength 17=performance 18=flight  19=sleep    20=endurance
-- 21=flexibility 22=resilience 23=telekinesis 24=appearance 25=beauty
-- 26=animals  27=camouflage 28=language  29=focus    30=time
-- 31=night    32=powershot  33=style    34=fire     35=temperature
-- 36=ice      37=social    38=charisma  39=transformation 40=fun
-- 41=nature   42=skin      43=phasing   44=art      45=creative
-- 46=singing  47=voice     48=eyes      49=friday-night-bundle
-- 50=chaos-shot-box  51=overdrive  52=sharpedge
-- ----------------------------------------------------------------
INSERT INTO `category_product` (`id`, `category_id`, `product_id`) VALUES

-- Omnigate (product 1)
(1,   1, 1), (2,   3, 1), (3,   4, 1), (4,   5, 1),

-- Oracle (product 2)
(5,   2, 2), (6,   6, 2), (7,   7, 2), (8,   4, 2), (9,   5, 2),

-- Machina (product 3)
(10,  2, 3), (11,  8, 3), (12,  6, 3), (13,  4, 3), (14,  5, 3),

-- Astral Drop (product 4)
(15,  2, 4), (16,  9, 4), (17,  4, 4), (18,  5, 4),

-- Aeternis (product 5)
(19,  1, 5), (20, 10, 5), (21, 11, 5), (22,  4, 5), (23,  5, 5),

-- XVision (product 6)
(24,  1, 6), (25, 12, 6), (26, 13, 6), (27, 14, 6),

-- GhostMode (product 7)
(28,  1, 7), (29, 15, 7), (30, 14, 7),

-- Titan (product 8)
(31,  1, 8), (32, 16, 8), (33, 17, 8), (34, 14, 8), (35, 51, 8),

-- Skybound (product 9)
(36,  1, 9), (37,  3, 9), (38, 18, 9), (39, 14, 9), (40, 51, 9),

-- Moonwake (product 10)
(41,  2, 10), (42, 19, 10), (43,  6, 10), (44, 14, 10), (45, 52, 10),

-- Endura (product 11)
(46,  1, 11), (47, 20, 11), (48, 17, 11), (49, 14, 11), (50, 51, 11),

-- Flexion (product 12)
(51,  1, 12), (52, 21, 12), (53, 22, 12), (54, 14, 12), (55, 51, 12),

-- Orbit (product 13)
(56,  2, 13), (57, 23, 13), (58,  6, 13), (59, 14, 13), (60, 52, 13),

-- Aura (product 14)
(61,  2, 14), (62, 24, 14), (63, 25, 14), (64, 14, 14),

-- WildTalk (product 15)
(65,  2, 15), (66,  7, 15), (67, 26, 15), (68, 14, 15),

-- Kamo (product 16)
(69,  1, 16), (70, 15, 16), (71, 27, 16), (72, 14, 16),

-- Lingua (product 17)
(73,  2, 17), (74, 28, 17), (75,  7, 17), (76,  6, 17), (77, 14, 17),

-- Zenith (product 18)
(78,  2, 18), (79, 29, 18), (80,  6, 18), (81, 17, 18), (82, 14, 18), (83, 52, 18),

-- SlowBurn (product 19)
(84,  2, 19), (85, 30, 19), (86,  6, 19), (87, 14, 19), (88, 52, 19),

-- Noctis (product 20)
(89,  1, 20), (90, 12, 20), (91, 31, 20), (92, 14, 20),

-- HoloHair (product 21)
(93,  1, 21), (94, 24, 21), (95, 33, 21), (96, 32, 21), (97, 49, 21),

-- Starlight (product 22)  — also linked to Chaos Shot Box (bundle description)
(98,  1, 22), (99, 24, 22), (100, 31, 22), (101, 32, 22), (102, 50, 22),

-- BlueFlame (product 23)
(103,  1, 23), (104, 34, 23), (105, 35, 23), (106, 32, 23),

-- FrostPop (product 24)
(107,  1, 24), (108, 36, 24), (109, 35, 24), (110, 32, 24),

-- CharmRush (product 25)
(111,  2, 25), (112, 37, 25), (113, 38, 25), (114, 32, 25), (115, 50, 25),

-- CritterMode (product 26)
(116,  1, 26), (117, 39, 26), (118, 40, 26), (119, 32, 26),

-- LeafMeAlone (product 27)
(120,  2, 27), (121, 41, 27), (122,  7, 27), (123, 32, 27),

-- ButterMode (product 28)
(124,  1, 28), (125, 42, 28), (126, 40, 28), (127, 32, 28),

-- StickySituation (product 29)
(128,  1, 29), (129, 42, 29), (130, 40, 29), (131, 32, 29),

-- GhostWalk (product 30)
(132,  1, 30), (133, 43, 30), (134, 40, 30), (135, 32, 30), (136, 50, 30),

-- BeautyFilter (product 31)
(137,  2, 31), (138, 24, 31), (139, 37, 31), (140, 32, 31), (141, 49, 31),

-- The Fun Guy (product 32)
(142,  1, 32), (143, 40, 32), (144, 37, 32), (145, 32, 32), (146, 49, 32),

-- EagleEyes (product 33)
(147,  1, 33), (148, 48, 33), (149, 32, 33), (150, 49, 33),

-- TrueBeethoven (product 34)
(151,  2, 34), (152, 44, 34), (153, 45, 34), (154, 32, 34),

-- VoiceTune (product 35)
(155,  1, 35), (156, 46, 35), (157, 47, 35), (158, 45, 35), (159, 32, 35),

-- ChargeBack (product 36)
(160,  1, 36), (161,  8, 36), (162, 32, 36),

-- WallCrawl (product 37)
(163,  1, 37), (164, 53, 37), (165, 40, 37), (166, 32, 37),

-- BrainBlip (product 38)
(167,  2, 38), (168, 37, 38), (169, 40, 38), (170, 32, 38),

-- VoxBox (product 39)
(171,  1, 39), (172, 47, 39), (173, 37, 39), (174, 40, 39), (175, 32, 39),

-- PixelMode (product 40)
(176,  1, 40), (177, 24, 40), (178, 40, 40), (179, 32, 40);

-- ----------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------------------------------------------
-- 5. ORDERS  (5 sample orders)
-- ----------------------------------------------------------------
INSERT INTO `orders`
    (`id`, `guest_name`, `guest_surname`, `guest_email`,
     `address`, `house_number`, `postal_code`, `city`, `country`,
     `phone_number`, `total_amount`, `created_at`)
VALUES

(1,
 'Marcus', 'Johnson', 'marcus.johnson@example.com',
 'Baker Street', '221B', 'NW1 6XE', 'London', 'United Kingdom',
 '+44 7700 900123', 1499.98, '2026-06-01 14:32:00'),

(2,
 'Sophia', 'Chen', 'sophia.chen@example.com',
 'Unter den Linden', '42', '10117', 'Berlin', 'Germany',
 '+49 30 12345678', 304.97, '2026-06-05 09:17:00'),

(3,
 'Luca', 'Ferrari', 'luca.ferrari@example.com',
 'Via Roma', '8', '20121', 'Milan', 'Italy',
 '+39 02 98765432', 189.94, '2026-06-10 18:45:00'),

(4,
 'Amara', 'Okafor', 'amara.okafor@example.com',
 'Rue de Rivoli', '15', '75001', 'Paris', 'France',
 '+33 1 23456789', 1699.98, '2026-06-15 11:05:00'),

(5,
 'James', 'Wilson', 'james.wilson@example.com',
 'Fifth Avenue', '350', '10118', 'New York', 'United States',
 '+1 212 555 0147', 184.94, '2026-06-18 22:10:00');

-- ----------------------------------------------------------------
-- 6. ORDER_PRODUCTS
-- price_at_purchase mirrors the product price at time of order.
-- ----------------------------------------------------------------
INSERT INTO `order_products`
    (`id`, `order_id`, `product_id`, `quantity`, `price_at_purchase`)
VALUES

-- Order 1 — Marcus: Aeternis + Oracle
(1,  1, 5, 1, 899.99),
(2,  1, 2, 1, 599.99),

-- Order 2 — Sophia: Titan + Endura + Skybound
(3,  2,  8, 1,  89.99),
(4,  2, 11, 1,  74.99),
(5,  2,  9, 1, 139.99),

-- Order 3 — Luca: HoloHair x3 + Starlight x2 + GhostWalk x1
(6,  3, 21, 3,  29.99),
(7,  3, 22, 2,  24.99),
(8,  3, 30, 1,  49.99),

-- Order 4 — Amara: Omnigate + Aeternis
(9,  4,  1, 1, 799.99),
(10, 4,  5, 1, 899.99),

-- Order 5 — James: CharmRush x2 + BeautyFilter x1 + The Fun Guy x3
(11, 5, 25, 2,  39.99),
(12, 5, 31, 1,  29.99),
(13, 5, 32, 3,  24.99);

-- ----------------------------------------------------------------
SET FOREIGN_KEY_CHECKS = 1;
-- ----------------------------------------------------------------



