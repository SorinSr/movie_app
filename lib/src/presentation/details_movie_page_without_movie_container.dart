// import 'package:flutter/material.dart';
// import 'package:movies_app/src/model/movie.dart';
//
// class MovieDetails extends StatelessWidget {
//   const MovieDetails({Key? key, required Movie this.movie}) : super(key: key);
//   final Movie? movie;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Movie Details'),
//       ),
//       body: Card(
//         margin: const EdgeInsets.all(10),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(14.0),
//         ),
//         elevation: 24,
//         child: SingleChildScrollView(
//           child: Column(
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(5, 15, 1, 5),
//                 child: Text(movie!.title.toString()),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(movie!.summary.toString(), textAlign: TextAlign.center),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Text(movie!.year.toString(), textAlign: TextAlign.center),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Text(movie!.genres.toString(), textAlign: TextAlign.center),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(2.0),
//                 child: Text(movie!.rating.toString(), textAlign: TextAlign.center),
//               ),
//               Image.network(movie!.largeCoverImage, width: 300, height: 450),
//               ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Text('Go back!'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
