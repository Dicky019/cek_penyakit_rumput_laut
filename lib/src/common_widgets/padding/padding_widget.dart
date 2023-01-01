import '../../../core/core.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeApp.w40),
        child: child,
      ),
    );
  }
}
