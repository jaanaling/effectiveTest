import 'package:easy_localization/easy_localization.dart';
import 'package:effective_test/generated/translations/locale_keys.g.dart';
import 'package:effective_test/router/routes.dart';
import 'package:effective_test/theme/theme.dart';
import 'package:effective_test/utils/ext/global_controller.dart';
import 'package:effective_test/utils/ext/icon_provider.dart';
import 'package:effective_test/utils/popups/search_popup/show_search_popup.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/theme/theme.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/widget/components/route_text_field.dart';
import 'package:effective_test/utils/ui_kit/routes_text_fields/widget/components/text_field_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

var _feature = StandartTheme().RoutesTextFields;

class RoutesTextFields extends StatefulWidget {
  final Widget? leadingIcon;
  final bool isFirstStyleType;
  final bool needPrefixIconTextFieldFrom;
  final bool needPrefixIconTextFieldTo;
  final bool needSuffixIconTextFieldFrom;
  final bool needSuffixIconTextFieldTo;

  const RoutesTextFields({
    super.key,
    this.leadingIcon,
    this.needPrefixIconTextFieldFrom = false,
    this.needPrefixIconTextFieldTo = false,
    this.needSuffixIconTextFieldFrom = false,
    this.needSuffixIconTextFieldTo = false,
    this.isFirstStyleType = true,
  });

  @override
  State<RoutesTextFields> createState() => _RoutesTextFieldsState();
}

class _RoutesTextFieldsState extends State<RoutesTextFields> {
  TextEditingController fromController = GlobalController.getFromController();
  TextEditingController toController = GlobalController.getToController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        widget.leadingIcon != null ? 8.0 : 0.0,
        16.0,
        0.0,
        18.0,
      ),
      decoration: BoxDecoration(
        color: widget.isFirstStyleType
            ? _feature.color.containerColorFirstType
            : _feature.color.containerColorSecondType,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: widget.isFirstStyleType
            ? [
                BoxShadow(
                  color: _feature.color.shadowColor,
                  offset: const Offset(0, 4),
                  blurRadius: 4,
                ),
              ]
            : null,
      ),
      child: Row(
        children: [
          widget.leadingIcon ?? const SizedBox(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  RouteTextField(
                    controller: fromController,
                    hintText: LocaleKeys.from.tr(),
                    prefixIcon: widget.needPrefixIconTextFieldFrom
                        ? TextFieldIcon(
                            icon: IconProvider.airplane.buildIconUrl(),
                            color: _feature.color.prefixIconTextFieldFromColor,
                          )
                        : null,
                    suffixIcon: widget.needSuffixIconTextFieldFrom
                        ? GestureDetector(
                            onTap: () => setState(() {
                              final String buffer = fromController.text;
                              fromController.text = toController.text;
                              toController.text = buffer;
                            }),
                            child: TextFieldIcon(
                              icon: IconProvider.change.buildIconUrl(),
                              color:
                                  _feature.color.suffixIconTextFieldFromColor,
                            ),
                          )
                        : null,
                  ),
                  Gap(
                    widget.isFirstStyleType ? 8.0 : 11.0,
                  ),
                  Divider(
                    color: widget.isFirstStyleType
                        ? _feature.color.separatorColorFirstType
                        : _feature.color.separatorColorSecondType,
                    height: 0,
                    indent: 0,
                    thickness: 1,
                  ),
                  const Gap(8.0),
                  RouteTextField(
                    controller: toController,
                    keyboardType: SearchPopupUtil.isSearchPopupShowing
                        ? TextInputType.text
                        : TextInputType.none,
                    onTap: () {
                      if (SearchPopupUtil.isSearchPopupShowing == false) {
                        SearchPopupUtil.searchPopupShowingChange(true);
                        SearchPopupUtil.showSearchPopup(context: context)
                            .then((value) {
                          if (GlobalController.toController.text.isNotEmpty &&
                              SearchPopupUtil.isSearchPopupShowing &&
                              GoRouterState.of(context).fullPath !=
                                  Routes.main.route) {
                            context.pushReplacement(
                              Routes.selectedCountry.route,
                              extra: GlobalController.toController.text,
                            );
                          } else if (GlobalController
                                  .toController.text.isNotEmpty &&
                              SearchPopupUtil.isSearchPopupShowing) {
                            context.push(
                              Routes.selectedCountry.route,
                              extra: GlobalController.toController.text,
                            );
                          }
                          SearchPopupUtil.searchPopupShowingChange(false);
                        });
                      }
                    },
                    hintText: LocaleKeys.to.tr(),
                    prefixIcon: widget.needPrefixIconTextFieldFrom
                        ? TextFieldIcon(
                            icon: IconProvider.search.buildIconUrl(),
                            color: _feature.color.prefixIconTextFieldToColor,
                          )
                        : null,
                    suffixIcon: widget.needSuffixIconTextFieldTo
                        ? GestureDetector(
                            onTap: () => setState(() => toController.clear()),
                            child: TextFieldIcon(
                              icon: IconProvider.close.buildIconUrl(),
                              color: _feature.color.suffixIconTextFieldToColor,
                            ),
                          )
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
