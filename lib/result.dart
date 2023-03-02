import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText = 'Selamat anda berhasil';
    if (resultScore >= 200) {
      resultText =
          'Poin anda => $resultScore \n Anda termasuk orang yang Efektif(Cekatan, Tangkas melaksanakan tugas) \n';
    } else if (resultScore >= 5) {
      resultText =
          '\n Poin anda => $resultScore \n Anda termasuk orang yang sedang-sedang saja tingkat efektifitasnya \n';
    } else {
      resultText =
          '\n Poin anda => $resultScore \n anda termasuk orang yang sangattidak Efektif (Malas, Lamban, Tidak Tangkas, Tidak Cekatan dalammelaksanakan tugas) ';
    }
    String tips = """
    
    Tips :
    1. Jangan malas untuk melakukan sesuatu
    2. Jangan terlalu lambat untuk melakukan sesuatu
    3. Jangan terlalu cepat untuk melakukan sesuatu
    
    """;

    resultText = resultText + tips;

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 30,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetHandler,
            child: const Text(
              'Ulang Tes?',
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0), fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
