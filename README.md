# 🛒 Flutter Shopping App Project

Welcome to the **Flutter Shopping App** repository! This project is a step-by-step guide for aspiring Flutter developers to build a **fully functional shopping app** from scratch. Whether you're a beginner or aiming to strengthen your Dart and Flutter skills, this project will walk you through each stage of development with modern best practices, beautiful UI, and internationalization.

---

## 📚 **Contents**
- [Project Overview](#project-overview)
- [Objectives](#objectives)
- [Tech Stack & Tools](#tech-stack--tools)
- [Features & Requirements](#features--requirements)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Localization 🌍](#localization-)
- [Screenshots 📸](#screenshots-)

---

## 📝 **Project Overview**
This app simulates a real-world shopping experience, featuring:
- User authentication (Sign-Up & Sign-In)
- Product browsing with interactive cart
- Responsive and animated UI
- Arabic localization for accessibility
- Modular code structure and documentation

You'll learn Dart programming concepts, master Flutter widgets, handle navigation and transitions, and set up localization using the `intl` package.

---

## 🎯 **Objectives**
- **Build** a complete shopping app using Dart & Flutter.
- **Apply** variables, constants, control flow, functions, and OOP principles.
- **Design** engaging UI with Stateless & Stateful Widgets.
- **Implement** input validation, navigation, and smooth animations.
- **Localize** the app into Arabic using `.arb` files and the Flutter Intl package.
- **Publish** and document your code professionally on GitHub.

---

## 🛠️ **Tech Stack & Tools**
- **Dart**: Core logic, OOP, and functions.
- **Flutter SDK**: UI, state management, navigation, and animations.
- **Flutter Intl**: Localization and internationalization.

---

## 🚀 **Features & Requirements**

### 1️⃣ **Aesthetic Welcome Screen**
- AppBar with custom title 🏷️
- Row with **two images** (local & online) 🖼️
- Custom fonts: `Suwannaphum-Regular`, bold, colored, and sized
- Centered layout with spacing
- **Sign-Up** and **Sign-In** buttons ➡️

### 2️⃣ **Sign Up/In to Access the App**
#### 🔒 Sign-Up Form
- Fields: Full Name (capitalized), Email (must include `@`), Password (≥6 chars), Confirm Password (must match)
- **Validation**: Error messages for invalid input
- On success: Dialog "Account created successfully" ✅
- "Close" button navigates to main shopping screen

#### 🔐 Sign-In Form
- Fields: Email (must include `@`), Password (≥6 chars)
- Valid submission: Dialog "Account sign-in successfully" ✅
- "Close" navigates to main shopping screen

### 3️⃣ **Smooth Transition into the App**
- Animated navigation: Fade-out Sign-Up, fade-in Shopping Home 🎬

### 4️⃣ **Explore the Shopping Home Screen**
- AppBar titled “Our Products” 🛍️
- Horizontal **PageView** for featured products
- Responsive **GridView**: Product cards (image, title, Add to Cart icon)
  - **Add to Cart** → SnackBar: "Item added to the cart" 🛒
- **Hot Offers** section: Vertical ListView with 5 offers, images, and descriptions 🔥

### 5️⃣ **View the App in Arabic**
- All text in Arabic via localization files (no hardcoded strings!) 🌍
  - “منتجاتنا” for “Our Products”
  - “العروض الساخنة” for “Hot Offers”
  - Arabic Sign-Up/In field labels & messages

---

## 🏁 **Getting Started**

### 1. **Clone the Repository**
```bash
git clone https://github.com/AmrKhaled05/Shopping-app.git
cd Shopping-app
```

### 2. **Setup Flutter**
- [Install Flutter SDK](https://flutter.dev/docs/get-started/install)
- Ensure your IDE (VS Code/Android Studio) is set up for Flutter

### 3. **Install Dependencies**
```bash
flutter pub get
```

### 4. **Run the App**
```bash
flutter run
```

### 5. **Localization**
- To view the app in Arabic, follow the instructions in the [Localization](#localization-) section.

---

## 🗂️ **Project Structure (Expanded)**

### **lib/**
- [HomePage.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/HomePage.dart)
- [Login.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/Login.dart)
- [Products.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/Products.dart)
- [Signup.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/Signup.dart)
- [User.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/User.dart)
- [WelcomePage.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/WelcomePage.dart)
- [WelcomePage1.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/WelcomePage1.dart)
- [WelcomePage2.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/WelcomePage2.dart)
- [WelcomePage3.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/WelcomePage3.dart)
- [main.dart](https://github.com/AmrKhaled05/Shopping-app/blob/main/lib/main.dart)

### **lang/**
- [ar-EG.json](https://github.com/AmrKhaled05/Shopping-app/blob/main/lang/ar-EG.json) (Arabic)
- [en-US.json](https://github.com/AmrKhaled05/Shopping-app/blob/main/lang/en-US.json) (English)

### **screenshots/**
#### **ArabicSection/**
- [HomePagePart1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/HomePagePart1.png)
- [HomePagePart2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/HomePagePart2.png)
- [Login.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/Login.png)
- [LoginValidation.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/LoginValidation.png)
- [SignUp.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/SignUp.png)
- [WelcomePage1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/WelcomePage1.png)
- [WelcomePage2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/WelcomePage2.png)
- [WelcomePage3.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/WelcomePage3.png)

#### **EnglishSection/**
- [HomePagePart1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/HomePagePart1.png)
- [HomePagePart2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/HomePagePart2.png)
- [LoginValidation.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/LoginValidation.png)
- [SignUp.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/SignUp.png)
- [SignUp2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/SignUp2.png)
- [SignUpValidation.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/SignUpValidation.png)
- [WelcomePage1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/WelcomePage1.png)
- [WelcomePage2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/WelcomePage2.png)
- [WelcomePage3.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/WelcomePage3.png)

---

## 🌍 **Localization**
This app supports **Arabic** using the `intl` package and `.arb` files.

**How it works:**
- All UI strings are referenced via localization files ([en-US.json](https://github.com/AmrKhaled05/Shopping-app/blob/main/lang/en-US.json) and [ar-EG.json](https://github.com/AmrKhaled05/Shopping-app/blob/main/lang/ar-EG.json)).
- No hardcoded text; switching language is seamless.
- To switch to Arabic, set the locale to `ar` in your device/emulator or use provided controls.

**Sample Arabic Texts:**
- "منتجاتنا" (Our Products)
- "العروض الساخنة" (Hot Offers)
- Sign-Up/In forms and dialogs fully translated

---

## 📸 **Screenshots**

### 🇬🇧 English UI Screenshots
- [HomePagePart1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/HomePagePart1.png)
- [HomePagePart2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/HomePagePart2.png)
- [LoginValidation.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/LoginValidation.png)
- [SignUp.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/SignUp.png)
- [SignUp2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/SignUp2.png)
- [SignUpValidation.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/SignUpValidation.png)
- [WelcomePage1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/WelcomePage1.png)
- [WelcomePage2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/WelcomePage2.png)
- [WelcomePage3.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/EnglishSection/WelcomePage3.png)

### 🇸🇦 Arabic UI Screenshots
- [HomePagePart1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/HomePagePart1.png)
- [HomePagePart2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/HomePagePart2.png)
- [Login.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/Login.png)
- [LoginValidation.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/LoginValidation.png)
- [SignUp.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/SignUp.png)
- [WelcomePage1.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/WelcomePage1.png)
- [WelcomePage2.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/WelcomePage2.png)
- [WelcomePage3.png](https://github.com/AmrKhaled05/Shopping-app/blob/main/screenshots/ArabicSection/WelcomePage3.png)

---
