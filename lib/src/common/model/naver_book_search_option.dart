import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'naver_book_search_option.g.dart';

@JsonSerializable()
class NaverBookSearchOption extends Equatable {
  final String? query;
  final int? display;
  final int? start;
  final NaverBookSearchType? sort;

  NaverBookSearchOption.init({required String query})
      : this(
          query: query,
          display: 10,
          start: 1,
          sort: NaverBookSearchType.sim,
        );

  NaverBookSearchOption({
    this.query,
    this.display,
    this.start,
    this.sort,
  });

  Map<String, dynamic> toMap() => _$NaverBookSearchOptionToJson(this);

  @override
  List<Object?> get props => [
        query,
        display,
        start,
        sort,
      ];
}

enum NaverBookSearchType {
  date("출간일순", "date"),
  sim("정확도순", "sim");

  final String name;
  final String value;

  const NaverBookSearchType(this.name, this.value);
}
