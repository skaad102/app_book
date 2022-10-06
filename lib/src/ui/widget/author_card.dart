import 'package:flutter/material.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard({Key? key}) : super(key: key);

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _like = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Color.fromARGB(139, 88, 2, 2),
            child: FlutterLogo(),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Mike Katz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () => {onPressButton(context)},
            icon: Icon(
              Icons.favorite_border,
              color: _like ? Colors.red : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  // onPressButton(BuildContext context) {}
  void onPressButton(BuildContext context) {
    setState(() {
      _like = !_like;
    });
    const snackBar = SnackBar(
      content: Text('Favorite'),
      // animation: ProxyAnimation,
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
    _like ? ScaffoldMessenger.of(context).showSnackBar(snackBar) : null;
  }
}
