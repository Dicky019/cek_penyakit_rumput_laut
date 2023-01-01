import '../../../core/core.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
    this.imageUrl,
    this.size = 124,
    this.padding = 8,
  });

  final String? imageUrl;
  final double size;
  final double padding;

  @override
  Widget build(BuildContext context) {
    const imageDefault =
        "https://images.pexels.com/photos/2387335/pexels-photo-2387335.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";

    return CardWidget(
      border: (124).r,
      child: Container(
        height: SizeApp.customWidth(size),
        width: SizeApp.customWidth(size),
        margin: EdgeInsets.all(SizeApp.customWidth(padding)),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
            imageUrl ?? imageDefault,
          ),
        ),
      ),
    );
  }
}
