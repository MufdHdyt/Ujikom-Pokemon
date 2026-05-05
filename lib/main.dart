import 'package:flutter/material.dart';

void main() {
  runApp(const PokedexApp());
}

class PokedexApp extends StatelessWidget {
  const PokedexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex Silph Co.',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0D0D1A),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFE3350D),
          elevation: 8,
        ),
      ),
      home: const PokedexHomePage(),
    );
  }
}

class Pokemon {
  final int id;
  final String name;
  final String emoji;
  final List<String> types;
  final String imageUrl;
  final String description;
  final String ability;
  final String weakness;
  final String role;
  final String evolution;
  final Map<String, int> stats;

  String get assetPath =>
      "pokemon/${name.toLowerCase().replaceAll(' ', '-')}.png";

  const Pokemon({
    required this.id,
    required this.name,
    required this.emoji,
    required this.types,
    required this.imageUrl,
    required this.description,
    required this.ability,
    required this.weakness,
    required this.role,
    required this.evolution,
    required this.stats,
  });
}

const List<Pokemon> pokemonList = [
  Pokemon(
    id: 1,
    name: 'Bulbasaur',
    emoji: '🌱',
    types: ['grass', 'poison'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
    description:
        'Bulbasaur adalah Pokémon yang mengandalkan keseimbangan antara offense dan defense. Tanaman di punggungnya menyimpan energi matahari untuk memperkuat serangan.',
    ability: 'Overgrow',
    weakness: 'Fire, Ice, Flying, Psychic',
    role: 'Support / Tank awal game',
    evolution: 'Ivysaur (Lv.16)',
    stats: {
      'HP': 45,
      'Atk': 49,
      'Def': 49,
      'SpAtk': 65,
      'SpDef': 65,
      'Spd': 45,
    },
  ),
  Pokemon(
    id: 6,
    name: 'Charizard',
    emoji: '🔥🐉',
    types: ['fire', 'flying'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
    description:
        'Charizard adalah attacker cepat dengan damage tinggi, terutama di Special Attack. Sangat berbahaya tapi punya kelemahan besar terhadap Rock-type.',
    ability: 'Blaze',
    weakness: 'Rock (x4), Water, Electric',
    role: 'Special Attacker / Sweeper',
    evolution: 'Final',
    stats: {
      'HP': 78,
      'Atk': 84,
      'Def': 78,
      'SpAtk': 109,
      'SpDef': 85,
      'Spd': 100,
    },
  ),
  Pokemon(
    id: 9,
    name: 'Blastoise',
    emoji: '💧',
    types: ['water'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png',
    description:
        'Blastoise adalah tank kuat dengan defense tinggi. Cocok untuk bertahan lama dan memberikan tekanan stabil.',
    ability: 'Torrent',
    weakness: 'Electric, Grass',
    role: 'Tank / Defensive Support',
    evolution: 'Final',
    stats: {
      'HP': 79,
      'Atk': 83,
      'Def': 100,
      'SpAtk': 85,
      'SpDef': 105,
      'Spd': 78,
    },
  ),
  Pokemon(
    id: 25,
    name: 'Pikachu',
    emoji: '⚡',
    types: ['electric'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
    description:
        'Pikachu adalah Pokémon cepat dengan serangan listrik yang efektif melawan Water dan Flying. Tapi cukup rapuh.',
    ability: 'Static',
    weakness: 'Ground',
    role: 'Fast Attacker / Utility',
    evolution: 'Pichu → Pikachu → Raichu',
    stats: {
      'HP': 35,
      'Atk': 55,
      'Def': 40,
      'SpAtk': 50,
      'SpDef': 50,
      'Spd': 90,
    },
  ),
  Pokemon(
    id: 94,
    name: 'Gengar',
    emoji: '👻',
    types: ['ghost', 'poison'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png',
    description:
        'Gengar adalah glass cannon dengan Special Attack tinggi dan kecepatan luar biasa. Cocok untuk menghabisi lawan dengan cepat.',
    ability: 'Cursed Body',
    weakness: 'Ghost, Dark, Psychic',
    role: 'Special Sweeper',
    evolution: 'Final',
    stats: {
      'HP': 60,
      'Atk': 65,
      'Def': 60,
      'SpAtk': 130,
      'SpDef': 75,
      'Spd': 110,
    },
  ),
  Pokemon(
    id: 149,
    name: 'Dragonite',
    emoji: '🐉',
    types: ['dragon', 'flying'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png',
    description:
        'Dragonite adalah pseudo-legendary dengan stat tinggi di hampir semua aspek. Walau terlihat ramah, dia sangat kuat di battle.',
    ability: 'Inner Focus',
    weakness: 'Ice (x4), Rock, Dragon, Fairy',
    role: 'Physical Sweeper / All-rounder',
    evolution: 'Final',
    stats: {
      'HP': 91,
      'Atk': 134,
      'Def': 95,
      'SpAtk': 100,
      'SpDef': 100,
      'Spd': 80,
    },
  ),
  Pokemon(
    id: 143,
    name: 'Snorlax',
    emoji: '😴',
    types: ['normal'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.png',
    description:
        'Snorlax adalah tank dengan HP besar. Sulit dikalahkan dan bisa jadi tembok tim.',
    ability: 'Thick Fat',
    weakness: 'Fighting',
    role: 'Tank / Wall',
    evolution: 'Final',
    stats: {
      'HP': 160,
      'Atk': 110,
      'Def': 65,
      'SpAtk': 65,
      'SpDef': 110,
      'Spd': 30,
    },
  ),
  Pokemon(
    id: 133,
    name: 'Eevee',
    emoji: '🧬',
    types: ['normal'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png',
    description:
        'Eevee unik karena punya banyak evolusi (Eeveelutions). Fleksibel sesuai kebutuhan tim.',
    ability: 'Adaptability',
    weakness: 'Fighting',
    role: 'Flexible / Support',
    evolution: 'Tergantung evolusinya',
    stats: {
      'HP': 55,
      'Atk': 55,
      'Def': 50,
      'SpAtk': 45,
      'SpDef': 65,
      'Spd': 55,
    },
  ),
  Pokemon(
    id: 134,
    name: 'Vaporeon',
    emoji: '💧',
    types: ['water'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.png',
    description: 'Tank spesial dengan HP besar dan sustain tinggi.',
    ability: 'Water Absorb',
    weakness: 'Electric, Grass',
    role: 'Special Tank / Support',
    evolution: 'Eevee → Vaporeon',
    stats: {
      'HP': 130,
      'Atk': 65,
      'Def': 60,
      'SpAtk': 110,
      'SpDef': 95,
      'Spd': 65,
    },
  ),
  Pokemon(
    id: 135,
    name: 'Jolteon',
    emoji: '⚡',
    types: ['electric'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.png',
    description: 'Salah satu Pokémon tercepat. Cocok untuk strike cepat.',
    ability: 'Volt Absorb',
    weakness: 'Ground',
    role: 'Fast Special Sweeper',
    evolution: 'Eevee → Jolteon',
    stats: {
      'HP': 65,
      'Atk': 65,
      'Def': 60,
      'SpAtk': 110,
      'SpDef': 95,
      'Spd': 130,
    },
  ),
  Pokemon(
    id: 136,
    name: 'Flareon',
    emoji: '🔥',
    types: ['fire'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.png',
    description: 'Damage fisik tinggi tapi agak lambat.',
    ability: 'Flash Fire',
    weakness: 'Water, Ground, Rock',
    role: 'Physical Attacker',
    evolution: 'Eevee → Flareon',
    stats: {
      'HP': 65,
      'Atk': 130,
      'Def': 60,
      'SpAtk': 95,
      'SpDef': 110,
      'Spd': 65,
    },
  ),
  Pokemon(
    id: 448,
    name: 'Lucario',
    emoji: '🐺',
    types: ['fighting', 'steel'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/448.png',
    description: 'Fighter dengan aura power, bisa mixed attacker.',
    ability: 'Steadfast',
    weakness: 'Fire, Fighting, Ground',
    role: 'Mixed Sweeper',
    evolution: 'Riolu → Lucario',
    stats: {
      'HP': 70,
      'Atk': 110,
      'Def': 70,
      'SpAtk': 115,
      'SpDef': 70,
      'Spd': 90,
    },
  ),
  Pokemon(
    id: 658,
    name: 'Greninja',
    emoji: '🥷',
    types: ['water', 'dark'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/658.png',
    description: 'Ninja Pokémon super cepat dengan ability unik (Protean).',
    ability: 'Protean',
    weakness: 'Electric, Grass, Fairy',
    role: 'Speed Sweeper',
    evolution: 'Final',
    stats: {
      'HP': 72,
      'Atk': 95,
      'Def': 67,
      'SpAtk': 103,
      'SpDef': 71,
      'Spd': 122,
    },
  ),
  Pokemon(
    id: 68,
    name: 'Machamp',
    emoji: '💪',
    types: ['fighting'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.png',
    description: 'Petarung kuat dengan 4 tangan.',
    ability: 'Guts',
    weakness: 'Flying, Psychic, Fairy',
    role: 'Physical Attacker',
    evolution: 'Machop → Machoke → Machamp',
    stats: {
      'HP': 90,
      'Atk': 130,
      'Def': 80,
      'SpAtk': 65,
      'SpDef': 85,
      'Spd': 55,
    },
  ),
  Pokemon(
    id: 65,
    name: 'Alakazam',
    emoji: '🧠',
    types: ['psychic'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.png',
    description: 'Glass cannon dengan kecerdasan tinggi.',
    ability: 'Synchronize',
    weakness: 'Bug, Ghost, Dark',
    role: 'Special Sweeper',
    evolution: 'Abra → Kadabra → Alakazam',
    stats: {
      'HP': 55,
      'Atk': 50,
      'Def': 45,
      'SpAtk': 135,
      'SpDef': 95,
      'Spd': 120,
    },
  ),
  Pokemon(
    id: 130,
    name: 'Gyarados',
    emoji: '🐉',
    types: ['water', 'flying'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.png',
    description: 'Agresif dan kuat secara fisik.',
    ability: 'Intimidate',
    weakness: 'Electric, Rock',
    role: 'Physical Sweeper',
    evolution: 'Magikarp → Gyarados',
    stats: {
      'HP': 95,
      'Atk': 125,
      'Def': 79,
      'SpAtk': 60,
      'SpDef': 100,
      'Spd': 81,
    },
  ),
  Pokemon(
    id: 248,
    name: 'Tyranitar',
    emoji: '🪨',
    types: ['rock', 'dark'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/248.png',
    description: 'Tank + attacker kuat, summon sandstorm.',
    ability: 'Sand Stream',
    weakness: 'Fighting, Ground, Bug, Steel, Water, Grass',
    role: 'Tank / Sweeper',
    evolution: 'Larvitar → Pupitar → Tyranitar',
    stats: {
      'HP': 100,
      'Atk': 134,
      'Def': 110,
      'SpAtk': 95,
      'SpDef': 100,
      'Spd': 61,
    },
  ),
];

class PokedexHomePage extends StatefulWidget {
  const PokedexHomePage({super.key});

  @override
  State<PokedexHomePage> createState() => _PokedexHomePageState();
}

class _PokedexHomePageState extends State<PokedexHomePage> {
  final TextEditingController _searchController = TextEditingController();
  late List<Pokemon> _filteredList;

  @override
  void initState() {
    super.initState();
    _filteredList = pokemonList;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filteredList = pokemonList
          .where((pokemon) => pokemon.name.toLowerCase().contains(query))
          .toList();
    });
  }

  Color _typeColor(String type) {
    const map = {
      'fire': Color(0xFFFF6B35),
      'water': Color(0xFF4FC3F7),
      'grass': Color(0xFF66BB6A),
      'poison': Color(0xFFAB47BC),
      'electric': Color(0xFFffee58),
      'ghost': Color(0xFF7E57C2),
      'dark': Color(0xFF546E7A),
      'flying': Color(0xFF90CAF9),
      'dragon': Color(0xFF7C4DFF),
      'normal': Color(0xFFBDBDBD),
      'psychic': Color(0xFFF06292),
      'steel': Color(0xFF90A4AE),
      'rock': Color(0xFF8D6E63),
      'fighting': Color(0xFFEF5350),
    };
    return map[type.toLowerCase()] ?? Colors.white70;
  }

  Color _statColor(String stat) {
    const map = {
      'HP': Color(0xFFEF5350),
      'Atk': Color(0xFFFF9800),
      'Def': Color(0xFF42A5F5),
      'SpAtk': Color(0xFFCE93D8),
      'SpDef': Color(0xFF80CBC4),
      'Spd': Color(0xFFFFEE58),
    };
    return map[stat] ?? Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: const SweepGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                    Color(0xFFE3350D),
                    Color(0xFFE3350D)
                  ],
                ),
                border: Border.all(color: const Color(0xFF222222), width: 3),
              ),
              child: Center(
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: const Color(0xFF222222), width: 2),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('POKÉDEX',
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w900)),
                Text('Silph Co. — Pokémon Encyclopedia',
                    style: TextStyle(fontSize: 10, color: Colors.white70)),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                hintText: 'Cari Pokémon...',
                hintStyle: TextStyle(color: Color(0x99FFFFFF)),
                prefixIcon: Icon(Icons.search, color: Colors.white70),
                filled: true,
                fillColor: Color(0x14FFFFFF),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color(0x1AFFFFFF)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Color(0xFFF4D23C), width: 2),
                ),
              ),
            ),
          ),
          Expanded(
            child: _filteredList.isEmpty
                ? const Center(
                    child: Text(
                      'Pokémon tidak ditemukan',
                      style: TextStyle(color: Color(0xB3FFFFFF)),
                    ),
                  )
                : GridView.builder(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.72,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                    ),
                    itemCount: _filteredList.length,
                    itemBuilder: (context, index) {
                      final pokemon = _filteredList[index];
                      return PokemonCard(
                        pokemon: pokemon,
                        typeColor: _typeColor,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => PokemonDetailPage(
                              pokemon: pokemon,
                              typeColor: _typeColor,
                              statColor: _statColor,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  final Color Function(String) typeColor;
  final VoidCallback onTap;

  const PokemonCard({
    super.key,
    required this.pokemon,
    required this.typeColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0x0FFFFFFF),
          border: Border.all(color: const Color(0x1AFFFFFF)),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  pokemon.assetPath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.network(
                      pokemon.imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[800],
                          child: const Center(
                              child: Icon(Icons.broken_image,
                                  color: Colors.white54)),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${pokemon.emoji} ${pokemon.name}',
                    style: const TextStyle(
                        fontWeight: FontWeight.w900, fontSize: 14),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: pokemon.types.map((type) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: typeColor(type),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          type.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PokemonDetailPage extends StatelessWidget {
  final Pokemon pokemon;
  final Color Function(String) typeColor;
  final Color Function(String) statColor;

  const PokemonDetailPage({
    super.key,
    required this.pokemon,
    required this.typeColor,
    required this.statColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            backgroundColor: const Color(0xFF0D0D1A),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('${pokemon.emoji} ${pokemon.name}'),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    pokemon.assetPath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Image.network(
                      pokemon.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[900],
                        child: const Center(
                            child: Icon(Icons.broken_image,
                                color: Colors.white54, size: 48)),
                      ),
                    ),
                  ),
                  Container(color: Colors.black38),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: pokemon.types.map((type) {
                      return Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: typeColor(type),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          type.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 24),
                  const Text('DESKRIPSI',
                      style: TextStyle(
                          color: Color(0xFFF4D23C),
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1)),
                  const SizedBox(height: 10),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0x0FFFFFFF),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      pokemon.description,
                      style: const TextStyle(height: 1.6),
                    ),
                  ),
                  const SizedBox(height: 20),
                  InfoTile(label: 'Ability', value: pokemon.ability),
                  InfoTile(label: 'Weakness', value: pokemon.weakness),
                  InfoTile(label: 'Role', value: pokemon.role),
                  InfoTile(label: 'Evolusi', value: pokemon.evolution),
                  const SizedBox(height: 20),
                  const Text('BASE STATS',
                      style: TextStyle(
                          color: Color(0xFFF4D23C),
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1)),
                  const SizedBox(height: 12),
                  ...pokemon.stats.entries.map((entry) {
                    final percent = entry.value / 150.0;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 64,
                              child: Text(entry.key,
                                  style: const TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12))),
                          SizedBox(
                              width: 36,
                              child: Text(entry.value.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700))),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: const Color(0x1AFFFFFF),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                FractionallySizedBox(
                                  widthFactor: percent.clamp(0.0, 1.0),
                                  child: Container(
                                    height: 8,
                                    decoration: BoxDecoration(
                                      color: statColor(entry.key),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final String label;
  final String value;

  const InfoTile({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          SizedBox(
              width: 90,
              child: Text('$label:',
                  style: const TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.w700))),
          Expanded(
              child: Text(value,
                  style: const TextStyle(fontWeight: FontWeight.w500))),
        ],
      ),
    );
  }
}
