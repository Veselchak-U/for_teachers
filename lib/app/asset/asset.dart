class Asset {
  static final png = _Png();
  static final svg = _Svg();
}

class _Png {
  static const _path = 'res/image/png/';
  final iconLoginButton = '${_path}icon_login_button.png';
  final loginBackground = '${_path}login_background.png';
  final welcomeBackground = '${_path}welcome_background.png';
  final rejectBackground = '${_path}reject_background.png';
}

class _Svg {
  static const _path = 'res/image/svg/';
  final iconInfo = '${_path}icon_info.svg';
  final iconMessageCircle = '${_path}icon_message_circle.svg';
  final textMesh = '${_path}text_mesh.svg';
}
