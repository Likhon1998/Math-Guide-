import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    home: MyChapters(),
  ));
}

class MyChapters extends StatefulWidget {
  const MyChapters({Key? key}) : super(key: key);

  @override
  State<MyChapters> createState() => _MyChaptersState();
}

class _MyChaptersState extends State<MyChapters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/open-book.png',
              height: 24,
              width: 24,
            ),
            SizedBox(width: 8),
            Text(
              'My Chapters',
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/w2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: YourContentWidget(),
      ),
    );
  }
}

class YourContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.0),
      children: [
        buildLocationButton(
          text: 'Chapter-01',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'Chapter-02',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/Proposal.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'Chapter-03',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'Chapter-04',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'Chapter-05',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'chapter-06',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'chapter-07',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'chapter-08',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'chapter-09',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'chapter-10',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
        SizedBox(height: 5),
        buildLocationButton(
          text: 'chapter-11',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PdfViewerPage('assets/shapla2.pdf')),
            );
          },
          buttonColor: Colors.blueGrey,
        ),
      ],
    );
  }
}

class PdfViewerPage extends StatelessWidget {
  final String pdfAssetPath;

  PdfViewerPage(this.pdfAssetPath);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Deatils'),
      ),
      body: SfPdfViewer.asset(
        pdfAssetPath,
      ),
    );
  }
}

Widget buildLocationButton({
  required String text,
  required VoidCallback onPressed,
  required Color buttonColor,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      primary: buttonColor,
    ),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.asset(
            'assets/book1.png',
            height: 24,
            width: 24,
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
