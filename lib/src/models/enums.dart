enum Format {
  flat._('flat'),
  structured._('structured');

  const Format._(this.value);
  final String value;
}

enum ProjectStatus {
  NONE._('NONE'),
  DRAFT._('DRAFT'),
  WIP._('WIP'),
  REVIEW._('REVIEW'),
  FINAL._('FINAL'),
  DEV._('DEV');

  const ProjectStatus._(this.value);
  final String value;
}
