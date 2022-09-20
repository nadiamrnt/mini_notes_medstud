import 'package:flutter/material.dart';

class BatuSaluranView extends StatelessWidget {
  static const String route = '/batu';

  const BatuSaluranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Batu Saluran Kemih (3A)",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0XFF4EBAFF),
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Anamnesis",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  buildParagraf(text: "BAK darah"),
                  buildParagraf(
                      text:
                          "Sulit BAK, apakah berpengaruh terhadap posisi? (vesikolitiasis)"),
                  buildParagraf(
                      text:
                          "Nyeri, lokasi? menjalar? meningkat/menurun? hilang timbul?"),
                  buildParagraf(text: "BAK terputus-putus"),
                  buildParagraf(text: "Tidak lampias BAKnya"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Pemeriksaan Fisik",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  buildParagraf(text: "TTV"),
                  buildParagraf(text: "Pemeriksaan GU Umum"),
                  Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildParagraf2(
                                text:
                                    "Nyeri ketok CVA (+) -> ginjal, ureter proksimal"),
                            buildParagraf2(
                                text:
                                    "NT (+ suprapubic -> vesica, ureter distal)"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Pemeriksaan Penunjang",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  buildParagraf(
                      text: "Darah rutin, HB, leukosit, trombosit, LED"),
                  buildParagraf(
                      text:
                          "USG abdomen -> acoustic shadow (+), hyperechoic (+)"),
                  buildParagraf(text: "BNO IVP -> gambaran radioopaq homogen"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Diagnosis",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  buildParagraf(text: "Nefrolitiasis"),
                  buildParagraf(text: "Ureteroliatiasis"),
                  buildParagraf(text: "Vesikolitiasis"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Diagnosis Banding",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  buildParagraf(text: "Batu lainnya"),
                  buildParagraf(text: "Striktur uretra"),
                  buildParagraf(text: "BPH"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Tatalaksana",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  buildParagraf(
                      text:
                          "Farmakologi\nR/ Asam mefenamat 50mg tab No X \n     S 3 dd tab 1 pc"),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text("Edukasi",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 8,
                  ),
                  buildParagraf(text: "Minum yang cukup"),
                  buildParagraf(text: "Jaga kebersihan"),
                  buildParagraf(text: "Rujuk"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row buildParagraf({required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.star,
          size: 16,
        ),
        const Text("  "),
        Expanded(child: Text(text)),
        const SizedBox(height: 20)
      ],
    );
  }

  Row buildParagraf2({required String text}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.donut_large_sharp,
          size: 16,
        ),
        const Text("  "),
        Expanded(child: Text(text)),
        const SizedBox(height: 20)
      ],
    );
  }
}
