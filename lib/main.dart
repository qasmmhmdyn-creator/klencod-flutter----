import 'package:flutter/material.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({Super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'القرآن الكريم والتفسير',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: const Color(0xFFF9F6EE),
      ),
      home: const SurahListPage(),
    );
  }
}

class Verse {
  final int number;
  final String text;
  final String tafsir;

  Verse({required this.number, required this.text, required this.tafsir});
}

class Surah {
  final int number;
  final String name;
  final String type;
  final List<Verse> verses;

  Surah({
    required this.number,
    required this.name,
    required this.type,
    required this.verses,
  });
}

final List<Surah> quranData = [
  Surah(
    number: 1,
    name: "الفاتحة",
    type: "مكّية",
    verses: [
      Verse(
        number: 1,
        text: "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
        tafsir: "أَبْتَدِئُ قِرَاءَةَ القُرْآنِ بِاسْمِ اللهِ مُسْتَعِينًا بِهِ، (اللهِ) عَلَمٌ عَلَى الرَّبِّ المَعْبُودِ بِحَقٍّ، (الرَّحْمَنِ) الذِي وَسِعَتْ رَحْمَتُهُ كُلَّ شَيْءٍ، (الرَّحِيمِ) بِالمُؤْمِنِينَ.",
      ),
      Verse(
        number: 2,
        text: "الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
        tafsir: "الثَّنَاءُ الكَامِلُ للهِ وَحْدَهُ، وَهُوَ خَالِقُ جَمِيعِ المَخْلُوقَاتِ وَمُرَبِيهِمْ بِنِعَمِهِ.",
      ),
      Verse(
        number: 3,
        text: "الرَّحْمَٰنِ الرَّحِيمِ",
        tafsir: "ثَنَاءٌ عَلَى اللهِ تَعَالَى بَعْدَ حَمْدِهِ فِي الآيَةِ السَّابِقَةِ بِرَحْمَتِهِ الوَاسِعَةِ.",
      ),
      Verse(
        number: 4,
        text: "مَالِكِ يَوْمِ الدِّينِ",
        tafsir: "اللهُ وَحْدَهُ هُوَ المَالِكُ وَالحَاكِمُ فِي يَوْمِ القِيَامَةِ وَالحِسَابِ.",
      ),
      Verse(
        number: 5,
        text: "إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ",
        tafsir: "نَخُصُّكَ وَحْدَكَ بِالعِبَادَةِ، وَنَسْتَعِينُ بِكَ وَحْدَكَ فِي جَمِيعِ أُمُورِنَا.",
      ),
      Verse(
        number: 6,
        text: "اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ",
        tafsir: "دُلَّنَا وَوَفِّقْنَا إِلَى الطَّرِيقِ الوَاضِحِ الَّذِي لا عِوَجَ فِيهِ، وَهُوَ الإِسْلامُ.",
      ),
      Verse(
        number: 7,
        text: "صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ",
        tafsir: "طَرِيقِ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ مِنَ النَّبِيِّينَ وَالصِّدِّيقِينَ، غَيْرِ طَرِيقِ المَغْضُوبِ عَلَيْهِمْ (الْيَهُودِ) وَلا الضَّالِّينَ (النَّصَارَى).",
      ),
    ],
  ),
  Surah(
    number: 112,
    name: "الإخلاص",
    type: "مكّية",
    verses: [
      Verse(
        number: 1,
        text: "قُلْ هُوَ اللَّهُ أَحَدٌ",
        tafsir: "قُلْ أَيُّهَا الرَّسُولُ: اللهُ هُوَ المَعْبُودُ بِحَقٍّ الوَاحِدُ الَّذِي لا شَرِيكَ لَهُ.",
      ),
      Verse(
        number: 2,
        text: "اللَّهُ الصَّمَدُ",
        tafsir: "اللهُ الَّذِي تَقْصُدُهُ الخَلاَئِقُ كُلُّهَا فِي حَوَائِجِهَا وَنَوَائِبِهَا.",
      ),
      Verse(
        number: 3,
        text: "لَمْ يَلِدْ وَلَمْ يُولَدْ",
        tafsir: "لَيْسَ لَهُ وَلَدٌ، وَلَمْ يُولَدْ هُوَ فَلَيْسَ لَهُ وَالِدٌ.",
      ),
      Verse(
        number: 4,
        text: "وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ",
        tafsir: "وَلَمْ يَكُنْ لَهُ مُثِيلٌ وَلا مُكَافِئٌ مِنْ خَلْقِهِ.",
      ),
    ],
  ),
  Surah(
    number: 113,
    name: "الفلق",
    type: "مكّية",
    verses: [
      Verse(
        number: 1,
        text: "قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ",
        tafsir: "قُلْ: أَعْتَصِمُ وَأَلْتَجِئُ بِرَبِّ الصُّبْحِ.",
      ),
      Verse(
        number: 2,
        text: "مِن شَرِّ مَا خَلَقَ",
        tafsir: "مِنْ شَرِّ جَمِيعِ المَخْلُوقَاتِ وَأَذَاهَا.",
      ),
      Verse(
        number: 3,
        text: "وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ",
        tafsir: "وَمِنْ شَرِّ اللَّيْلِ إِذَا أَظْلَمَ وَدَخَلَ فِي كُلِّ شَيْءٍ.",
      ),
      Verse(
        number: 4,
        text: "وَمِن شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ",
        tafsir: "وَمِنْ شَرِّ السَّاحِرَاتِ اللاَّتِي يَنْفُثْنَ فِي العُقَدِ لِلسِّحْرِ.",
      ),
      Verse(
        number: 5,
        text: "وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ",
        tafsir: "وَمِنْ شَرِّ حَاسِدٍ يَتَمَنَّى زَوَالَ النِّعْمَةِ إِذَا بَدَأَ بِحَسَدِهِ.",
      ),
    ],
  ),
  Surah(
    number: 114,
    name: "الناس",
    type: "مكّية",
    verses: [
      Verse(
        number: 1,
        text: "قُلْ أَعُوذُ بِرَبِّ النَّاسِ",
        tafsir: "قُلْ: أَعْتَصِمُ وَأَلْتَجِئُ بِرَبِّ النَّاسِ وَخَالِقِهِمْ.",
      ),
      Verse(
        number: 2,
        text: "مَلِكِ النَّاسِ",
        tafsir: "مَالِكِ النَّاسِ وَالمُتَصَرِّفِ فِي جَمِيعِ شُؤُونِهِمْ.",
      ),
      Verse(
        number: 3,
        text: "إِلَٰهِ النَّاسِ",
        tafsir: "مَعْبُودِ النَّاسِ بِحَقٍّ لا إِلَهَ لَهُمْ غَيْرُهُ.",
      ),
      Verse(
        number: 4,
        text: "مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ",
        tafsir: "مِنْ شَرِّ الشَّيْطَانِ الَّذِي يُوَسْوِسُ عِنْدَ الغَفْلَةِ وَيَخْنُسُ عِنْدَ ذِكْرِ اللهِ.",
      ),
      Verse(
        number: 5,
        text: "الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ",
        tafsir: "الَّذِي يَبُثُّ الشُّرُورَ وَالشُّكُوكَ فِي قُلُوبِ النَّاسِ.",
      ),
      Verse(
        number: 6,
        text: "مِنَ الْجِنَّةِ وَالنَّاسِ",
        tafsir: "مِنْ شَيَاطِينِ الجِنِّ وَشَيَاطِينِ الإِنْسِ.",
      ),
    ],
  ),
];

class SurahListPage extends StatelessWidget {
  const SurahListPage({Super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'القرآن الكريم والتفسير',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0F5257),
      ),
      body: ListView.builder(
        itemCount: quranData.length,
        itemBuilder: (context, index) {
          final surah = quranData[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Color(0xFF0F5257),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '${surah.number}',
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                'سورة ${surah.name}',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('${surah.type} - عدد الآيات: ${surah.verses.length}'),
              trailing: const Icon(Icons.arrow_forward_ios, color: Color(0xFF0F5257), size: 18),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SurahDetailPage(surah: surah),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class SurahDetailPage extends StatelessWidget {
  final Surah surah;
  const SurahDetailPage({Super.key, required this.surah});

  void _showTafsirDialog(BuildContext context, Verse verse) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: min,
            crossAxisAlignment: CrossAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.menu_book, color: Color(0xFF0F5257)),
                  const SizedBox(width: 8),
                  Text(
                    'تفسير الآية (${verse.number})',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0F5257),
                    ),
                  ),
                ],
              ),
              const Divider(height: 20, thickness: 1),
              Text(
                verse.tafsir,
                style: const TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('سورة ${surah.name}'),
        backgroundColor: const Color(0xFF0F5257),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: surah.verses.length,
        itemBuilder: (context, index) {
          final verse = surah.verses[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 1.5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAlignment.stretch,
                children: [
                  Text(
                    '${verse.text} ﴿${verse.number}﴾',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 22,
                      height: 2.1,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1B2A4A),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0F5257),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () => _showTafsirDialog(context, verse),
                      icon: const Icon(Icons.read_more, color: Colors.white, size: 18),
                      label: const Text('التفسير الميسر', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
