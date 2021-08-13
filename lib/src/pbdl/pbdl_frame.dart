import 'package:json_annotation/json_annotation.dart';

part 'pbdl_frame.g.dart';

@JsonSerializable(explicitToJson: true)
class PBDLFrame {
  final bool constrainProportions;
  double height, width, x, y;
  String type = 'frame';

  PBDLFrame({
    this.constrainProportions,
    this.x,
    this.y,
    this.width,
    this.height,
  });

  static PBDLFrame getFrame(dynamic boundaryRectangle) {
    if (boundaryRectangle is Map) {
      return PBDLFrame.fromJson(boundaryRectangle);
    }
    return boundaryRectangle;
  }

  factory PBDLFrame.fromJson(Map<String, dynamic> json) =>
      _$PBDLFrameFromJson(json);
  Map<String, dynamic> toJson() => _$PBDLFrameToJson(this);
}
