import 'package:flutter/material.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10, // сколько я чеяк
        itemExtent: 163, // высота ячеяк
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ]),
                  clipBehavior: Clip.hardEdge, // Закругляет кроя

                  child: Row(
                    children: [
                      Image.asset('images/flutter.jpg'),
                      SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(height: 20),
                            Text(
                              'Creates a text widget.',

                              style: TextStyle(
                                  fontWeight: FontWeight.bold), // жмрный шрифт
                              maxLines: 1, // обризает текст
                              overflow: TextOverflow.ellipsis, // обризает текст
                            ),
                            SizedBox(height: 5),
                            Text(
                              'April 7,2021',
                              style: TextStyle(color: Colors.grey),
                              maxLines: 1, // обризает текст
                              overflow: TextOverflow.ellipsis, // обризает текст
                            ),
                            SizedBox(height: 20),
                            Text(
                              'If the [style] argument is null, the text will use the style from the closest enclosing If the [style] argument is null, the text will use the style from the closest enclosing',
                              maxLines: 2, // обризает текст
                              overflow: TextOverflow.ellipsis, // обризает текст
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    // эфект нажатия
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      print('11');
                    },
                  ),
                ),
              ],
            ),
          );
        });
  }
}
