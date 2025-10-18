import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scrollrole/presentation/common/styled_app_bar.dart';
import 'package:scrollrole/util/log_util.dart';

class ColorSchemePreviewScreen extends StatelessWidget {
  static const String path = '/colorSchemePreview';

  static GoRoute route() {
    return GoRoute(
      path: path,
      builder: (BuildContext context, GoRouterState state) {
        return const ColorSchemePreviewScreen();
      },
    );
  }

  const ColorSchemePreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    // Use this for debugging changes without having to reboot the emulator:
    // colorScheme = ColorScheme.fromSeed(
    //   brightness: Brightness.dark,
    //   dynamicSchemeVariant: DynamicSchemeVariant.fruitSalad,
    //   seedColor: Colors.white,
    // );

    LogUtil.log(colorScheme.toString());
    _prettyDebugColorScheme(colorScheme);

    return PopScope(
      canPop: true,
      child: Scaffold(
        appBar: StyledAppBar(titleText: "Color Scheme Preview"),
        body: Center(
          child: ListView(
            children: [
              _ColorRow(name: "primary", color: colorScheme.primary),
              _ColorRow(name: "onPrimary", color: colorScheme.onPrimary),
              _ColorRow(
                name: "primaryContainer",
                color: colorScheme.primaryContainer,
              ),
              _ColorRow(
                name: "onPrimaryContainer",
                color: colorScheme.onPrimaryContainer,
              ),
              _ColorRow(name: "primaryFixed", color: colorScheme.primaryFixed),
              _ColorRow(
                name: "primaryFixedDim",
                color: colorScheme.primaryFixedDim,
              ),
              _ColorRow(
                name: "onPrimaryFixed",
                color: colorScheme.onPrimaryFixed,
              ),
              _ColorRow(
                name: "onPrimaryFixedVariant",
                color: colorScheme.onPrimaryFixedVariant,
              ),
              _ColorRow(name: "secondary", color: colorScheme.secondary),
              _ColorRow(name: "onSecondary", color: colorScheme.onSecondary),
              _ColorRow(
                name: "secondaryContainer",
                color: colorScheme.secondaryContainer,
              ),
              _ColorRow(
                name: "onSecondaryContainer",
                color: colorScheme.onSecondaryContainer,
              ),
              _ColorRow(
                name: "secondaryFixed",
                color: colorScheme.secondaryFixed,
              ),
              _ColorRow(
                name: "secondaryFixedDim",
                color: colorScheme.secondaryFixedDim,
              ),
              _ColorRow(
                name: "onSecondaryFixed",
                color: colorScheme.onSecondaryFixed,
              ),
              _ColorRow(
                name: "onSecondaryFixedVariant",
                color: colorScheme.onSecondaryFixedVariant,
              ),
              _ColorRow(name: "tertiary", color: colorScheme.tertiary),
              _ColorRow(name: "onTertiary", color: colorScheme.onTertiary),
              _ColorRow(
                name: "tertiaryContainer",
                color: colorScheme.tertiaryContainer,
              ),
              _ColorRow(
                name: "onTertiaryContainer",
                color: colorScheme.onTertiaryContainer,
              ),
              _ColorRow(
                name: "tertiaryFixed",
                color: colorScheme.tertiaryFixed,
              ),
              _ColorRow(
                name: "tertiaryFixedDim",
                color: colorScheme.tertiaryFixedDim,
              ),
              _ColorRow(
                name: "onTertiaryFixed",
                color: colorScheme.onTertiaryFixed,
              ),
              _ColorRow(
                name: "onTertiaryFixedVariant",
                color: colorScheme.onTertiaryFixedVariant,
              ),
              _ColorRow(name: "error", color: colorScheme.error),
              _ColorRow(name: "onError", color: colorScheme.onError),
              _ColorRow(
                name: "errorContainer",
                color: colorScheme.errorContainer,
              ),
              _ColorRow(
                name: "onErrorContainer",
                color: colorScheme.onErrorContainer,
              ),
              _ColorRow(name: "surface", color: colorScheme.surface),
              _ColorRow(name: "onSurface", color: colorScheme.onSurface),
              _ColorRow(name: "surfaceDim", color: colorScheme.surfaceDim),
              _ColorRow(
                name: "surfaceBright",
                color: colorScheme.surfaceBright,
              ),
              _ColorRow(
                name: "surfaceContainerLowest",
                color: colorScheme.surfaceContainerLowest,
              ),
              _ColorRow(
                name: "surfaceContainerLow",
                color: colorScheme.surfaceContainerLow,
              ),
              _ColorRow(
                name: "surfaceContainer",
                color: colorScheme.surfaceContainer,
              ),
              _ColorRow(
                name: "surfaceContainerHigh",
                color: colorScheme.surfaceContainerHigh,
              ),
              _ColorRow(
                name: "surfaceContainerHighest",
                color: colorScheme.surfaceContainerHighest,
              ),
              _ColorRow(
                name: "onSurfaceVariant",
                color: colorScheme.onSurfaceVariant,
              ),
              _ColorRow(name: "outline", color: colorScheme.outline),
              _ColorRow(
                name: "outlineVariant",
                color: colorScheme.outlineVariant,
              ),
              _ColorRow(name: "shadow", color: colorScheme.shadow),
              _ColorRow(name: "scrim", color: colorScheme.scrim),
              _ColorRow(
                name: "inverseSurface",
                color: colorScheme.inverseSurface,
              ),
              _ColorRow(
                name: "onInverseSurface",
                color: colorScheme.onInverseSurface,
              ),
              _ColorRow(
                name: "inversePrimary",
                color: colorScheme.inversePrimary,
              ),
              _ColorRow(name: "surfaceTint", color: colorScheme.surfaceTint),
            ],
          ),
        ),
      ),
    );
  }
}

class _ColorRow extends StatelessWidget {
  final String name;
  final Color color;

  const _ColorRow({required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(height: 20, width: 20, child: ColoredBox(color: color)),
        SizedBox(width: 10),
        SizedBox(width: 100, child: Text(_toHexString(color))),
        Text(name),
      ],
    );
  }
}

void _prettyDebugColorScheme(ColorScheme colorScheme) {
  LogUtil.log("ColorScheme(");
  LogUtil.log("  brightness: ${colorScheme.brightness},");
  LogUtil.log("  primary: ${_toHexString(colorScheme.primary)},");
  LogUtil.log("  onPrimary: ${_toHexString(colorScheme.onPrimary)},");
  LogUtil.log(
    "  primaryContainer: "
    "${_toHexString(colorScheme.primaryContainer)},",
  );
  LogUtil.log(
    "  onPrimaryContainer: "
    "${_toHexString(colorScheme.onPrimaryContainer)},",
  );
  LogUtil.log("  primaryFixed: ${_toHexString(colorScheme.primaryFixed)},");
  LogUtil.log(
    "  primaryFixedDim: "
    "${_toHexString(colorScheme.primaryFixedDim)},",
  );
  LogUtil.log(
    "  onPrimaryFixed: "
    "${_toHexString(colorScheme.onPrimaryFixed)},",
  );
  LogUtil.log(
    "  onPrimaryFixedVariant: "
    "${_toHexString(colorScheme.onPrimaryFixedVariant)},",
  );
  LogUtil.log("  secondary: ${_toHexString(colorScheme.secondary)},");
  LogUtil.log("  onSecondary: ${_toHexString(colorScheme.onSecondary)},");
  LogUtil.log(
    "  secondaryContainer: "
    "${_toHexString(colorScheme.secondaryContainer)},",
  );
  LogUtil.log(
    "  onSecondaryContainer: "
    "${_toHexString(colorScheme.onSecondaryContainer)},",
  );
  LogUtil.log(
    "  secondaryFixed: "
    "${_toHexString(colorScheme.secondaryFixed)},",
  );
  LogUtil.log(
    "  secondaryFixedDim: "
    "${_toHexString(colorScheme.secondaryFixedDim)},",
  );
  LogUtil.log(
    "  onSecondaryFixed: "
    "${_toHexString(colorScheme.onSecondaryFixed)},",
  );
  LogUtil.log(
    "  onSecondaryFixedVariant: "
    "${_toHexString(colorScheme.onSecondaryFixedVariant)},",
  );
  LogUtil.log("  tertiary: ${_toHexString(colorScheme.tertiary)},");
  LogUtil.log("  onTertiary: ${_toHexString(colorScheme.onTertiary)},");
  LogUtil.log(
    "  tertiaryContainer: "
    "${_toHexString(colorScheme.tertiaryContainer)},",
  );
  LogUtil.log(
    "  onTertiaryContainer: "
    "${_toHexString(colorScheme.onTertiaryContainer)},",
  );
  LogUtil.log("  tertiaryFixed: ${_toHexString(colorScheme.tertiaryFixed)},");
  LogUtil.log(
    "  tertiaryFixedDim: "
    "${_toHexString(colorScheme.tertiaryFixedDim)},",
  );
  LogUtil.log(
    "  onTertiaryFixed: "
    "${_toHexString(colorScheme.onTertiaryFixed)},",
  );
  LogUtil.log(
    "  onTertiaryFixedVariant: "
    "${_toHexString(colorScheme.onTertiaryFixedVariant)},",
  );
  LogUtil.log("  error: ${_toHexString(colorScheme.error)},");
  LogUtil.log("  onError: ${_toHexString(colorScheme.onError)},");
  LogUtil.log(
    "  errorContainer: "
    "${_toHexString(colorScheme.errorContainer)},",
  );
  LogUtil.log(
    "  onErrorContainer: "
    "${_toHexString(colorScheme.onErrorContainer)},",
  );
  LogUtil.log("  surface: ${_toHexString(colorScheme.surface)},");
  LogUtil.log("  onSurface: ${_toHexString(colorScheme.onSurface)},");
  LogUtil.log("  surfaceDim: ${_toHexString(colorScheme.surfaceDim)},");
  LogUtil.log("  surfaceBright: ${_toHexString(colorScheme.surfaceBright)},");
  LogUtil.log(
    "  surfaceContainerLowest: "
    "${_toHexString(colorScheme.surfaceContainerLowest)},",
  );
  LogUtil.log(
    "  surfaceContainerLow: "
    "${_toHexString(colorScheme.surfaceContainerLow)},",
  );
  LogUtil.log(
    "  surfaceContainer: "
    "${_toHexString(colorScheme.surfaceContainer)},",
  );
  LogUtil.log(
    "  surfaceContainerHigh: "
    "${_toHexString(colorScheme.surfaceContainerHigh)},",
  );
  LogUtil.log(
    "  surfaceContainerHighest: "
    "${_toHexString(colorScheme.surfaceContainerHighest)},",
  );
  LogUtil.log(
    "  onSurfaceVariant: "
    "${_toHexString(colorScheme.onSurfaceVariant)},",
  );
  LogUtil.log("  outline: ${_toHexString(colorScheme.outline)},");
  LogUtil.log(
    "  outlineVariant: "
    "${_toHexString(colorScheme.outlineVariant)},",
  );
  LogUtil.log("  shadow: ${_toHexString(colorScheme.shadow)},");
  LogUtil.log("  scrim: ${_toHexString(colorScheme.scrim)},");
  LogUtil.log(
    "  inverseSurface: "
    "${_toHexString(colorScheme.inverseSurface)},",
  );
  LogUtil.log(
    "  onInverseSurface: "
    "${_toHexString(colorScheme.onInverseSurface)},",
  );
  LogUtil.log(
    "  inversePrimary: "
    "${_toHexString(colorScheme.inversePrimary)},",
  );
  LogUtil.log("  surfaceTint: ${_toHexString(colorScheme.surfaceTint)},");
  LogUtil.log(")");
}

String _toHexString(Color c) {
  return "0x${c.toARGB32().toRadixString(16).padLeft(2, '0')}";
}
