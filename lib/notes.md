


### Which textTheme to use where
TextTheme Style | Usage Recommendation | Example
displayLarge | App Title, Splash Screen Big Title | "MYAPP" on startup
displayMedium | Main Heading in Landing Pages, Key Titles | "Welcome to Dashboard"
displaySmall | Section Headers or Important Titles | "Recent Updates"
headlineLarge | Main Page Heading inside Screens | "Profile" page heading
headlineMedium | Sub-section Titles inside Screens | "Personal Info" title
headlineSmall | Smaller Titles for Panels or Sub-sections | "Change Password" title
titleLarge | Card Titles, Section Headings | "Notifications" card title
titleMedium | Minor Card Titles, Buttons, Tabs | "View All" button, "Profile" tab
titleSmall | Small Section Titles, Input Labels | "Username" field label
bodyLarge | Main Paragraph Text, Long Reading Sections | Description texts, About section
bodyMedium | Secondary Text, Short Descriptions | Card descriptions, Small info
bodySmall | Very Tiny Text, Tertiary Information | Date, Time, Status text
labelLarge | Buttons, Chips, Badges | "Submit" button text
labelMedium | Form Labels, Secondary Buttons | "Enter password" small form label
labelSmall | Tiny Labels, Helper Texts | "Required" small warning next to input

Property Name | Typical Use
displayLarge | App name, Big splash headings
displayMedium | Big headings
displaySmall | Smaller big headings
headlineLarge | Page titles
headlineMedium | Section titles
headlineSmall | Sub-section headings
titleLarge | Main titles
titleMedium | Card titles, Button text
titleSmall | Smaller title text
bodyLarge | Main body paragraph
bodyMedium | Secondary body paragraph
bodySmall | Tiny descriptive text
labelLarge | Button labels
labelMedium | Input field labels
labelSmall | Tiny labels


### ColorSchemes expectes a fixed structure like
Property Name | Meaning
primary | Main brand color of app
onPrimary | Color drawn on top of primary (e.g., text on a primary button)
secondary | Secondary accent color
onSecondary | Text/icon color that goes on top of secondary
background | General background color
onBackground | Text/icon color that goes on top of background
surface | Background color for cards, sheets, etc.
onSurface | Text/icon color that goes on top of surface
error | Error color
onError | Text/icon color on top of error background

### Checklist to know about theme data
Topic | Is it important? | Status (what you've already learned)
ColorScheme (light & dark mode) | ✅ VERY Important | ✅ You learned how to define it properly
TextTheme (typography system) | ✅ VERY Important | ✅ You learned how to manage textTheme, responsive fontSize
Using Theme.of(context) everywhere | ✅ VERY Important | ✅ You learned it (for text, colors, buttons etc.)
Customizing InputDecorationTheme (for TextFields globally) | ✅ Important | ❌ Not yet fully learned
Button Themes (ElevatedButtonTheme, OutlinedButtonTheme) | ✅ Important | ❌ Not fully learned yet
AppBarTheme, CardTheme, BottomNavigationBarTheme | ✅ Good to know | ❌ Not yet
ThemeExtension for advanced theming (custom colors) | ✅ Good for big projects | ❌ I touched on it but you didn't create a full one yet
Dark Mode and Light Mode Switching | ✅ Critical for production | ✅ You understood the color part but not auto-switching mechanism yet
ThemeMode.system support (follows system light/dark mode) | ✅ Important | ❌ Not setup yet