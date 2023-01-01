import '../../../core/core.dart';

class CardWidget extends StatelessWidget {
  final Widget child;
  final double? border;

  const CardWidget({
    super.key,
    this.border,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(border ?? 8.r),
        color: Colors.white,
        boxShadow: [
          ShadowApp.dropShadow,
        ],
      ),
      child: child,
    );
  }
}
