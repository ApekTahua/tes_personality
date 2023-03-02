import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          '1. Ketika membuat suatu perencanaan. Saya yakin dapat melaksanakan rencana tersebut.',
      'answers': [
        {'text': 'Sangat setuju', 'score': 14},
        {'text': 'Setuju', 'score': 11},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 5},
        {'text': 'Sangat tidak setuju', 'score': 2},
      ],
    },
    {
      'questionText':
          '2. Saya terkadang tidak bisa segera mulai bekerja ketika saya seharusnya melakukannya ',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '3. Ketika saya gagal melaksanakan tugas untuk pertama kali, maka saya gigih mencobanya sampai berhasil melakukannya',
      'answers': [
        {'text': 'Sangat setuju', 'score': 14},
        {'text': 'Setuju', 'score': 11},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 5},
        {'text': 'Sangat tidak setuju', 'score': 2},
      ],
    },
    {
      'questionText':
          '4. Saya jarang mencapai tujuan-tujuan penting yang sudah saya tetapkan sebelumnya',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '5. Saya menyerah ketika melakukan sesuatu sebelum saya menyelesaikannya',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText': '6. Saya takut akan kesulitan dan selalu menghindarinya',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '7. Jika saya menemui sesuatu pekerjaan yang terlihat sulit, saya tak mau mencoba melakukan pekerjaan tersebut',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '9. Jika saya sudah memutuskan melakukan sesuatu, saya langsung segera mengerjakannya tanpa menunda-nunda',
      'answers': [
        {'text': 'Sangat setuju', 'score': 14},
        {'text': 'Setuju', 'score': 11},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 5},
        {'text': 'Sangat tidak setuju', 'score': 2},
      ],
    },
    {
      'questionText':
          '10. Jika mencoba hal baru dan tidak berhasil, saya segera menyerah',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '11. Saya tidak mampu mengatasi masalah-masalah baru yang tak terduga karena hal itu diluar perkiraan saya sebelumnya',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '12. Saya menghindari mencoba sesuatu yang baru jika terlihat rumit dan kompleks',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '13. Kegagalan justeru membuat saya berusaha lebih keras dan lebih baik dari sebelumnya',
      'answers': [
        {'text': 'Sangat setuju', 'score': 14},
        {'text': 'Setuju', 'score': 11},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 5},
        {'text': 'Sangat tidak setuju', 'score': 2},
      ],
    },
    {
      'questionText':
          '14. Saya sering merasa kurang yakin dengan kemampuan saya sendiri ketika harus mengerjakan sesuatu',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '15. Saya dapat mengandalkan diri saya sendiri tanpa harus selalu bergantung pada orang lain',
      'answers': [
        {'text': 'Sangat setuju', 'score': 14},
        {'text': 'Setuju', 'score': 11},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 5},
        {'text': 'Sangat tidak setuju', 'score': 2},
      ],
    },
    {
      'questionText': '16. Saya sering dan gampang menyerah',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
    {
      'questionText':
          '17. Sepertinya saya tak mampu mengatasi masalah-masalah kehidupan saya sendiri',
      'answers': [
        {'text': 'Sangat setuju', 'score': 1},
        {'text': 'Setuju', 'score': 5},
        {'text': 'Netral', 'score': 8},
        {'text': 'Tidak setuju', 'score': 11},
        {'text': 'Sangat tidak setuju', 'score': 14},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalscore = 0;

  void _resetQuiz() {
    setState(() {});
    _questionIndex = 0;
    _totalscore = 0;
  }

  void _answerQuestions(int score) {
    _totalscore = _totalscore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (kDebugMode) {
      print(_questionIndex);
    }
    if (_questionIndex < _questions.length) {
      if (kDebugMode) {
        print('Gas pertanyaan lagi!');
      }
    } else {
      if (kDebugMode) {
        print('Pertanyaan selesai!');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title:
              const Text('Tes Personality by Kelvin Julius Hartono_2501988945'),
          titleTextStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalscore, _resetQuiz),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
