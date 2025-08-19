# 🏆 Flutter Pixel-Perfect E-Commerce App

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![GetX](https://img.shields.io/badge/GetX-FF4081?style=for-the-badge&logoColor=white)
![API](https://img.shields.io/badge/API-REST-brightgreen)

A **pixel-perfect Flutter application** demonstrating multi-level category navigation, reactive UI, and API integration using **GetX** for state management.  
The app fetches **categories, sub-categories, and products** from a REST API and displays dynamic badges for product quantities.

---

## 🖥 App Overview

### **Screen 1 - Onboarding / Splash Screen**
- 🌅 Full-screen splash with **logo and background**  
- ⏱ Automatically navigates to **Home Screen** after **3 seconds**

### **Screen 2 - Home Screen**
Divided into **7 sections** for a rich e-commerce experience:

1. **🧾 Header**
   - Logo + action icons (UI only, no actions on press)  

2. **📂 Categories**
   - Horizontal scrollable list  
   - **First category selected by default**  
   - Selecting a category updates **sub-categories**  
   - Badge displays **sum of quantities of all products under all sub-categories**  

3. **📁 Sub-Categories**
   - Horizontal scrollable list for selected category  
   - **First sub-category selected by default**  
   - Selecting a sub-category updates **products**  
   - Badge shows **sum of quantities of all products in that sub-category**  

4. **🛒 Products**
   - Heading shows selected sub-category name  
   - Horizontal scrollable list of products  
   - Displays **price 💵 and discounted price 🏷️**  
   - Discount badge hidden if **discountPercentage is null or 0**  

5. **🚚 Free Shipping**
   - Static UI design as per pixel-perfect layout  
---

## 🌐 API Integration

- The app fetches **categories, sub-categories, and products** from a REST API.  
- Data is dynamically loaded and displayed in the app.  
- **Category badges** show the sum of all product quantities under that category.  
- **Sub-category badges** show the sum of quantities of products under that sub-category.  
- **Products** display price, discounted price, and images. Discount badges are shown only if applicable.  
- All API calls are handled asynchronously with **error handling** and **loading indicators** for smooth UX.
