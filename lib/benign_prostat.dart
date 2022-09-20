import 'package:flutter/material.dart';

class BenignView extends StatelessWidget {
  static const String route = '/benign';

  const BenignView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Benign Prostat Hyperplasia (2A)",
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
                buildParagraf(text: "Sulit buang air kecil"),
                buildParagraf(text: "Mengejan saat buang air kecil"),
                buildParagraf(text: "Pancaran Rendah"),
                buildParagraf(text: "Sering buang air kecil"),
                buildParagraf(text: "Tidak lampias"),
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
                buildParagraf(text: "Rectal Toucher"),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildParagraf2(text: "Permukaan -> rata/ halus"),
                          buildParagraf2(text: "Pembesaran (+)"),
                          buildParagraf2(text: "Konsistensi -> kenyal"),
                          buildParagraf2(text: "Simetris"),
                          buildParagraf2(text: "Mobile/tak terfiksir"),
                          buildParagraf2(text: "NT(+)/(-)"),
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
                buildParagraf(text: "USG abdomen -> pembesaran prostat"),
                buildParagraf(text: "PSA -> normal (5 mg/dL)"),
                buildParagraf(text: "BNO IVP (menyingkirkan batu)"),
                const SizedBox(
                  height: 16,
                ),
                const Text("Diagnosis",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 8,
                ),
                buildParagraf(text: "Retensi urine e.c BPH"),
                buildParagraf(text: "BPH"),
                const SizedBox(
                  height: 16,
                ),
                const Text("Diagnosis Banding",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 8,
                ),
                buildParagraf(text: "Ca prostat"),
                buildParagraf(text: "Striktur uretra"),
                buildParagraf(text: "BSK"),
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
                        "Farmakologi\nR/ Tamsulosin 0,4 mg tab No III \n     S 1 dd tab 1\n     Atau\nR/ Finasterid 5 mg tab No XXX\n     S 1 dd tab 1"),
                const SizedBox(
                  height: 16,
                ),
                buildParagraf(text: "Non Farmakologi"),
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
                              text: "Kateter akan diganti setelah 7 hari"),
                          buildParagraf2(
                              text:
                                  "Jika ada keluhan, nyeri urin campur darah harus segera lapor"),
                          buildParagraf2(text: "Jangan ditarik kateternya"),
                          buildParagraf2(text: "Rujuk!!!"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
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
