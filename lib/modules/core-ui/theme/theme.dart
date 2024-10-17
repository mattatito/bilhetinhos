import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285619212),
      surfaceTint: Color(4285619212),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294893702),
      onPrimaryContainer: Color(4280490752),
      secondary: Color(4285029952),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294042043),
      onSecondaryContainer: Color(4280425220),
      tertiary: Color(4286208268),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958759),
      onTertiaryContainer: Color(4280752384),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965488),
      onSurface: Color(4280163091),
      onSurfaceVariant: Color(4283188793),
      outline: Color(4286412391),
      outlineVariant: Color(4291741364),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610279),
      inversePrimary: Color(4292985965),
      primaryFixed: Color(4294893702),
      onPrimaryFixed: Color(4280490752),
      primaryFixedDim: Color(4292985965),
      onPrimaryFixedVariant: Color(4283843840),
      secondaryFixed: Color(4294042043),
      onSecondaryFixed: Color(4280425220),
      secondaryFixedDim: Color(4292134305),
      onSecondaryFixedVariant: Color(4283450922),
      tertiaryFixed: Color(4294958759),
      onTertiaryFixed: Color(4280752384),
      tertiaryFixedDim: Color(4293771372),
      onTertiaryFixedVariant: Color(4284367360),
      surfaceDim: Color(4292991436),
      surfaceBright: Color(4294965488),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294702053),
      surfaceContainer: Color(4294307295),
      surfaceContainerHigh: Color(4293912538),
      surfaceContainerHighest: Color(4293518036),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283580672),
      surfaceTint: Color(4285619212),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4287197732),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283122214),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286542932),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284038656),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287852323),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965488),
      onSurface: Color(4280163091),
      onSurfaceVariant: Color(4282925621),
      outline: Color(4284833616),
      outlineVariant: Color(4286675563),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610279),
      inversePrimary: Color(4292985965),
      primaryFixed: Color(4287197732),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4285487625),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286542932),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284898109),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287852323),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286076425),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292991436),
      surfaceBright: Color(4294965488),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294702053),
      surfaceContainer: Color(4294307295),
      surfaceContainerHigh: Color(4293912538),
      surfaceContainerHighest: Color(4293518036),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281016576),
      surfaceTint: Color(4285619212),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283580672),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280885769),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283122214),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281278208),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284038656),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965488),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280820760),
      outline: Color(4282925621),
      outlineVariant: Color(4282925621),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281610279),
      inversePrimary: Color(4294962100),
      primaryFixed: Color(4283580672),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281871104),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283122214),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281609234),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284038656),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282198272),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292991436),
      surfaceBright: Color(4294965488),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294702053),
      surfaceContainer: Color(4294307295),
      surfaceContainerHigh: Color(4293912538),
      surfaceContainerHighest: Color(4293518036),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4292985965),
      surfaceTint: Color(4292985965),
      onPrimary: Color(4282134272),
      primaryContainer: Color(4283843840),
      onPrimaryContainer: Color(4294893702),
      secondary: Color(4292134305),
      onSecondary: Color(4281872406),
      secondaryContainer: Color(4283450922),
      onSecondaryContainer: Color(4294042043),
      tertiary: Color(4293771372),
      onTertiary: Color(4282461440),
      tertiaryContainer: Color(4284367360),
      onTertiaryContainer: Color(4294958759),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279636747),
      onSurface: Color(4293518036),
      onSurfaceVariant: Color(4291741364),
      outline: Color(4288123008),
      outlineVariant: Color(4283188793),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518036),
      inversePrimary: Color(4285619212),
      primaryFixed: Color(4294893702),
      onPrimaryFixed: Color(4280490752),
      primaryFixedDim: Color(4292985965),
      onPrimaryFixedVariant: Color(4283843840),
      secondaryFixed: Color(4294042043),
      onSecondaryFixed: Color(4280425220),
      secondaryFixedDim: Color(4292134305),
      onSecondaryFixedVariant: Color(4283450922),
      tertiaryFixed: Color(4294958759),
      onTertiaryFixed: Color(4280752384),
      tertiaryFixedDim: Color(4293771372),
      onTertiaryFixedVariant: Color(4284367360),
      surfaceDim: Color(4279636747),
      surfaceBright: Color(4282202415),
      surfaceContainerLowest: Color(4279307783),
      surfaceContainerLow: Color(4280163091),
      surfaceContainer: Color(4280491799),
      surfaceContainerHigh: Color(4281149985),
      surfaceContainerHighest: Color(4281873451),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293249393),
      surfaceTint: Color(4292985965),
      onPrimary: Color(4280096000),
      primaryContainer: Color(4289236797),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4292397733),
      onSecondary: Color(4280030721),
      secondaryContainer: Color(4288450670),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294100080),
      onTertiary: Color(4280292352),
      tertiaryContainer: Color(4289890877),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279636747),
      onSurface: Color(4294966006),
      onSurfaceVariant: Color(4292070072),
      outline: Color(4289372817),
      outlineVariant: Color(4287201907),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518036),
      inversePrimary: Color(4283975168),
      primaryFixed: Color(4294893702),
      onPrimaryFixed: Color(4279701504),
      primaryFixedDim: Color(4292985965),
      onPrimaryFixedVariant: Color(4282594560),
      secondaryFixed: Color(4294042043),
      onSecondaryFixed: Color(4279701504),
      secondaryFixedDim: Color(4292134305),
      onSecondaryFixedVariant: Color(4282266907),
      tertiaryFixed: Color(4294958759),
      onTertiaryFixed: Color(4279897856),
      tertiaryFixedDim: Color(4293771372),
      onTertiaryFixedVariant: Color(4282987008),
      surfaceDim: Color(4279636747),
      surfaceBright: Color(4282202415),
      surfaceContainerLowest: Color(4279307783),
      surfaceContainerLow: Color(4280163091),
      surfaceContainer: Color(4280491799),
      surfaceContainerHigh: Color(4281149985),
      surfaceContainerHighest: Color(4281873451),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966006),
      surfaceTint: Color(4292985965),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4293249393),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966006),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4292397733),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966007),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294100080),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279636747),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966006),
      outline: Color(4292070072),
      outlineVariant: Color(4292070072),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293518036),
      inversePrimary: Color(4281608448),
      primaryFixed: Color(4294960538),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4293249393),
      onPrimaryFixedVariant: Color(4280096000),
      secondaryFixed: Color(4294305471),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4292397733),
      onSecondaryFixedVariant: Color(4280030721),
      tertiaryFixed: Color(4294960054),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294100080),
      onTertiaryFixedVariant: Color(4280292352),
      surfaceDim: Color(4279636747),
      surfaceBright: Color(4282202415),
      surfaceContainerLowest: Color(4279307783),
      surfaceContainerLow: Color(4280163091),
      surfaceContainer: Color(4280491799),
      surfaceContainerHigh: Color(4281149985),
      surfaceContainerHighest: Color(4281873451),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
