import '../../../core/core.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.title,
    required this.onTap,
    this.isLoading = false,
    // required this.padding,
  }) : super(key: key);

  final String title;
  final bool isLoading;
  final void Function() onTap;

  Widget _getLoadingWidget() {
    return SizedBox(
      height: 18.h,
      width: 18.w,
      child: const CircularProgressIndicator(
        color: ColorApp.secondaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        borderRadius: BorderRadius.circular(25.r),
        color: ColorApp.primaryColor,
        child: SizedBox(
          width: SizeApp.fullWidth(context),
          height: SizeApp.customHeight(50),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Visibility(
                visible: isLoading,
                child: _getLoadingWidget(),
              ),
              Visibility(
                visible: !isLoading,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Text(
                  title,
                  style: TypographyApp.body.copyWith(
                    fontWeight: FontWeight.bold,
                    color: ColorApp.primaryButtonColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
