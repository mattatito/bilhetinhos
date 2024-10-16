import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285161233),
      surfaceTint: Color(4285161233),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294173833),
      onPrimaryContainer: Color(4280294400),
      secondary: Color(4284768065),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4293714877),
      onSecondaryContainer: Color(4280228869),
      tertiary: Color(4285488398),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294697351),
      onTertiaryContainer: Color(4280425216),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965739),
      onSurface: Color(4280097811),
      onSurfaceVariant: Color(4283057977),
      outline: Color(4286281576),
      outlineVariant: Color(4291610293),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281544743),
      inversePrimary: Color(4292266096),
      primaryFixed: Color(4294173833),
      onPrimaryFixed: Color(4280294400),
      primaryFixedDim: Color(4292266096),
      onPrimaryFixedVariant: Color(4283451136),
      secondaryFixed: Color(4293714877),
      onSecondaryFixed: Color(4280228869),
      secondaryFixedDim: Color(4291807138),
      onSecondaryFixedVariant: Color(4283189035),
      tertiaryFixed: Color(4294697351),
      onTertiaryFixed: Color(4280425216),
      tertiaryFixedDim: Color(4292724078),
      onTertiaryFixedVariant: Color(4283713024),
      surfaceDim: Color(4292860620),
      surfaceBright: Color(4294965739),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294570981),
      surfaceContainer: Color(4294176224),
      surfaceContainerHigh: Color(4293781722),
      surfaceContainerHighest: Color(4293452500),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4283187968),
      surfaceTint: Color(4285161233),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4286674215),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282925863),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4286281045),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283449856),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287066917),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965739),
      onSurface: Color(4280097811),
      onSurfaceVariant: Color(4282794806),
      outline: Color(4284702545),
      outlineVariant: Color(4286544747),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281544743),
      inversePrimary: Color(4292266096),
      primaryFixed: Color(4286674215),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4284963854),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4286281045),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4284636222),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287066917),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285291275),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292860620),
      surfaceBright: Color(4294965739),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294570981),
      surfaceContainer: Color(4294176224),
      surfaceContainerHigh: Color(4293781722),
      surfaceContainerHighest: Color(4293452500),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4280820224),
      surfaceTint: Color(4285161233),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4283187968),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280689162),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282925863),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280951296),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283449856),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965739),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280689688),
      outline: Color(4282794806),
      outlineVariant: Color(4282794806),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281544743),
      inversePrimary: Color(4294831506),
      primaryFixed: Color(4283187968),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281543936),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282925863),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4281412883),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283449856),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281740288),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292860620),
      surfaceBright: Color(4294965739),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294570981),
      surfaceContainer: Color(4294176224),
      surfaceContainerHigh: Color(4293781722),
      surfaceContainerHighest: Color(4293452500),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4292266096),
      surfaceTint: Color(4292266096),
      onPrimary: Color(4281807104),
      primaryContainer: Color(4283451136),
      onPrimaryContainer: Color(4294173833),
      secondary: Color(4291807138),
      onSecondary: Color(4281676055),
      secondaryContainer: Color(4283189035),
      onSecondaryContainer: Color(4293714877),
      tertiary: Color(4292724078),
      onTertiary: Color(4282003456),
      tertiaryContainer: Color(4283713024),
      onTertiaryContainer: Color(4294697351),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279571212),
      onSurface: Color(4293452500),
      onSurfaceVariant: Color(4291610293),
      outline: Color(4287992193),
      outlineVariant: Color(4283057977),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293452500),
      inversePrimary: Color(4285161233),
      primaryFixed: Color(4294173833),
      onPrimaryFixed: Color(4280294400),
      primaryFixedDim: Color(4292266096),
      onPrimaryFixedVariant: Color(4283451136),
      secondaryFixed: Color(4293714877),
      onSecondaryFixed: Color(4280228869),
      secondaryFixedDim: Color(4291807138),
      onSecondaryFixedVariant: Color(4283189035),
      tertiaryFixed: Color(4294697351),
      onTertiaryFixed: Color(4280425216),
      tertiaryFixedDim: Color(4292724078),
      onTertiaryFixedVariant: Color(4283713024),
      surfaceDim: Color(4279571212),
      surfaceBright: Color(4282136880),
      surfaceContainerLowest: Color(4279242247),
      surfaceContainerLow: Color(4280097811),
      surfaceContainer: Color(4280360983),
      surfaceContainerHigh: Color(4281084449),
      surfaceContainerHighest: Color(4281808172),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4292594804),
      surfaceTint: Color(4292266096),
      onPrimary: Color(4279899648),
      primaryContainer: Color(4288582209),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4292070310),
      onSecondary: Color(4279899650),
      secondaryContainer: Color(4288188784),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293053042),
      onTertiary: Color(4280030720),
      tertiaryContainer: Color(4289040446),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279571212),
      onSurface: Color(4294966003),
      onSurfaceVariant: Color(4291873721),
      outline: Color(4289242002),
      outlineVariant: Color(4287071091),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293452500),
      inversePrimary: Color(4283582464),
      primaryFixed: Color(4294173833),
      onPrimaryFixed: Color(4279570688),
      primaryFixedDim: Color(4292266096),
      onPrimaryFixedVariant: Color(4282267136),
      secondaryFixed: Color(4293714877),
      onSecondaryFixed: Color(4279570688),
      secondaryFixedDim: Color(4291807138),
      onSecondaryFixedVariant: Color(4282070556),
      tertiaryFixed: Color(4294697351),
      onTertiaryFixed: Color(4279636224),
      tertiaryFixedDim: Color(4292724078),
      onTertiaryFixedVariant: Color(4282463488),
      surfaceDim: Color(4279571212),
      surfaceBright: Color(4282136880),
      surfaceContainerLowest: Color(4279242247),
      surfaceContainerLow: Color(4280097811),
      surfaceContainer: Color(4280360983),
      surfaceContainerHigh: Color(4281084449),
      surfaceContainerHighest: Color(4281808172),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966003),
      surfaceTint: Color(4292266096),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4292594804),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966003),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4292070310),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966005),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293053042),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279571212),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966003),
      outline: Color(4291873721),
      outlineVariant: Color(4291873721),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293452500),
      inversePrimary: Color(4281346560),
      primaryFixed: Color(4294502541),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4292594804),
      onPrimaryFixedVariant: Color(4279899648),
      secondaryFixed: Color(4293978049),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4292070310),
      onSecondaryFixedVariant: Color(4279899650),
      tertiaryFixed: Color(4294960780),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293053042),
      onTertiaryFixedVariant: Color(4280030720),
      surfaceDim: Color(4279571212),
      surfaceBright: Color(4282136880),
      surfaceContainerLowest: Color(4279242247),
      surfaceContainerLow: Color(4280097811),
      surfaceContainer: Color(4280360983),
      surfaceContainerHigh: Color(4281084449),
      surfaceContainerHighest: Color(4281808172),
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
     scaffoldBackgroundColor: colorScheme.surface,
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
