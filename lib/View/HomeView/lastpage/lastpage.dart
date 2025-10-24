import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Constants/AppColor/appColor.dart';
import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
import 'package:portfolio/Widgets/smallContainerWidget/smallContainerWidget.dart';
import 'package:portfolio/Widgets/textWidget/textWidget.dart';

class LastPage extends StatefulWidget {
  LastPage({super.key});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  bool isLoading = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  clearFields() {
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    subjectController.clear();
    messageController.clear();
  }

  insertData() async {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        subjectController.text.isEmpty ||
        messageController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: TextWidget(
              text: "Please fill all fields",
              color: AppColor.whiteColor,
              fontsize: 18,
              fontWeight: FontWeight.w600)));
      return;
    }
    try {
      isLoading = true;
      setState(() {});

      await FirebaseFirestore.instance.collection("userData").add({
        "name": nameController.text,
        "email": emailController.text,
        "phone": phoneController.text,
        "subject": subjectController.text,
        "message": messageController.text,
        "timestamp": FieldValue.serverTimestamp(),
      });

      isLoading = false;
      setState(() {});
      clearFields();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: TextWidget(
              text: "Data insert successfully",
              color: AppColor.whiteColor,
              fontsize: 18,
              fontWeight: FontWeight.w600)));
    } catch (e) {
      setState(() => isLoading = false);
      print("Error: ${e.toString()}");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: TextWidget(
              text: "Error: ${e.toString}",
              color: AppColor.whiteColor,
              fontsize: 18,
              fontWeight: FontWeight.w600)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponseWidget(
        mobile: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.greyColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    text: "CONTACT",
                    color: AppColor.redColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(height: 8),
                  TextWidget(
                    text: "Contact With Me",
                    color: AppColor.whiteColor,
                    fontsize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmallContainerWidget(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.map_outlined,
                                    color: AppColor.redColor,
                                    size: 10,
                                  ),
                                  SizedBox(height: 4),
                                  TextWidget(
                                    text: "REHMAN DEVELOPER",
                                    color: AppColor.whiteColor,
                                    fontsize: 5,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 12),
                            SmallContainerWidget(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone_outlined,
                                    color: AppColor.redColor,
                                    size: 10,
                                  ),
                                  const SizedBox(height: 4),
                                  TextWidget(
                                    text: "+92-3499-856-995",
                                    color: AppColor.whiteColor,
                                    fontsize: 5,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            SmallContainerWidget(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    color: AppColor.redColor,
                                    size: 10,
                                  ),
                                  SizedBox(height: 4),
                                  TextWidget(
                                    text: "rehmankh2256@gmail.com",
                                    color: AppColor.whiteColor,
                                    fontsize: 5,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 12),
                            SmallContainerWidget(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_outlined,
                                    color: AppColor.redColor,
                                    size: 10,
                                  ),
                                  const SizedBox(height: 4),
                                  TextWidget(
                                    text: "Freelance Available",
                                    color: AppColor.whiteColor,
                                    fontsize: 5,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 350,
                          width: 280,
                          decoration: BoxDecoration(
                            color: AppColor.lightGreyColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    // 🔹 Name Field
                                    Expanded(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Center(
                                          // 👈 centers TextFormField vertically
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: TextFormField(
                                              controller: nameController,
                                              textAlignVertical:
                                                  TextAlignVertical
                                                      .center, // 👈 important
                                              style: TextStyle(
                                                color: AppColor.whiteColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              decoration: InputDecoration(
                                                isCollapsed:
                                                    true, // 👈 removes extra padding
                                                border: InputBorder.none,
                                                hintText: "Enter Your Name",
                                                hintStyle: TextStyle(
                                                  color: AppColor.whiteColor
                                                      .withOpacity(0.7),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),

                                    // 🔹 Phone Field
                                    Expanded(
                                      child: Container(
                                        height:
                                            35, // same height for consistency
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: TextFormField(
                                              controller: phoneController,
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              style: TextStyle(
                                                color: AppColor.whiteColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              decoration: InputDecoration(
                                                isCollapsed: true,
                                                border: InputBorder.none,
                                                hintText: "Enter Your Phone",
                                                hintStyle: TextStyle(
                                                  color: AppColor.whiteColor
                                                      .withOpacity(0.7),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Row(
                                  children: [
                                    // 🔹 Email Field
                                    Expanded(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: TextFormField(
                                              controller: emailController,
                                              textAlignVertical: TextAlignVertical
                                                  .center, // 👈 centers vertically
                                              style: TextStyle(
                                                color: AppColor.whiteColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              decoration: InputDecoration(
                                                isCollapsed:
                                                    true, // 👈 removes extra vertical padding
                                                border: InputBorder.none,
                                                hintText: "Enter Your Email",
                                                hintStyle: TextStyle(
                                                  color: AppColor.whiteColor
                                                      .withOpacity(0.7),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(width: 12),

                                    // 🔹 Subject Field
                                    Expanded(
                                      child: Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: TextFormField(
                                              controller: subjectController,
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              style: TextStyle(
                                                color: AppColor.whiteColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              decoration: InputDecoration(
                                                isCollapsed: true,
                                                border: InputBorder.none,
                                                hintText: "Enter Your Subject",
                                                hintStyle: TextStyle(
                                                  color: AppColor.whiteColor
                                                      .withOpacity(0.7),
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Container(
                                  height: 170,
                                  decoration: BoxDecoration(
                                    color: AppColor.greyColor,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 12),
                                    child: TextFormField(
                                      controller: messageController,
                                      maxLines: null,
                                      expands: true,
                                      style: TextStyle(
                                        color: AppColor.whiteColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Type Your Message",
                                        hintStyle: TextStyle(
                                          color: AppColor.whiteColor
                                              .withOpacity(0.7),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () {
                                    insertData();
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 220,
                                    decoration: BoxDecoration(
                                      color: AppColor.greyColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: isLoading == true
                                        ? Center(
                                            child: CircularProgressIndicator(),
                                          )
                                        : Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Send Message",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                                Icon(
                                                  Icons.send,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                              ],
                                            ),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
        tablet: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.greyColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    text: "CONTACT",
                    color: AppColor.redColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 8),
                  TextWidget(
                    text: "Contact With Me",
                    color: AppColor.whiteColor,
                    fontsize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SmallContainerWidget(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.map_outlined,
                                    color: AppColor.redColor,
                                    size: 20,
                                  ),
                                  const SizedBox(height: 8),
                                  TextWidget(
                                    text: "REHMAN DEVELOPER",
                                    color: AppColor.whiteColor,
                                    fontsize: 9,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            SmallContainerWidget(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.phone_outlined,
                                    color: AppColor.redColor,
                                    size: 20,
                                  ),
                                  const SizedBox(height: 8),
                                  TextWidget(
                                    text: "+92-3499-856-995",
                                    color: AppColor.whiteColor,
                                    fontsize: 9,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            SmallContainerWidget(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    color: AppColor.redColor,
                                    size: 20,
                                  ),
                                  const SizedBox(height: 8),
                                  TextWidget(
                                    text: "rehmankh2256@gmail.com",
                                    color: AppColor.whiteColor,
                                    fontsize: 9,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            SmallContainerWidget(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_outlined,
                                    color: AppColor.redColor,
                                    size: 20,
                                  ),
                                  const SizedBox(height: 8),
                                  TextWidget(
                                    text: "Freelance Available",
                                    color: AppColor.whiteColor,
                                    fontsize: 9,
                                    fontWeight: FontWeight.w600,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 30),
                        Container(
                          height: 450,
                          width: 500,
                          decoration: BoxDecoration(
                            color: AppColor.lightGreyColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: TextFormField(
                                            controller: nameController,
                                            keyboardType: TextInputType.name,
                                            style: TextStyle(
                                              color: AppColor.whiteColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Enter Your Name",
                                              hintStyle: TextStyle(
                                                color: AppColor.whiteColor
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: TextFormField(
                                            controller: phoneController,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                              color: AppColor.whiteColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Enter Your Phone",
                                              hintStyle: TextStyle(
                                                color: AppColor.whiteColor
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: TextFormField(
                                            controller: emailController,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            style: TextStyle(
                                              color: AppColor.whiteColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Enter Your Email",
                                              hintStyle: TextStyle(
                                                color: AppColor.whiteColor
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 12),
                                    Expanded(
                                      child: Container(
                                        height: 40,
                                        decoration: BoxDecoration(
                                          color: AppColor.greyColor,
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: TextFormField(
                                            controller: subjectController,
                                            keyboardType: TextInputType.name,
                                            style: TextStyle(
                                              color: AppColor.whiteColor,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Enter Your Subject",
                                              hintStyle: TextStyle(
                                                color: AppColor.whiteColor
                                                    .withOpacity(0.7),
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                    color: AppColor.greyColor,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12, vertical: 12),
                                    child: TextFormField(
                                      controller: messageController,
                                      maxLines: null,
                                      expands: true,
                                      style: TextStyle(
                                        color: AppColor.whiteColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Type Your Message",
                                        hintStyle: TextStyle(
                                          color: AppColor.whiteColor
                                              .withOpacity(0.7),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () => insertData(),
                                  child: Container(
                                          height: 40,
                                          width: 250,
                                          decoration: BoxDecoration(
                                            color: AppColor.greyColor,
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          child: isLoading == true
                                              ? Center(
                                              child: CircularProgressIndicator())
                                              : Center(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Send Message",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(width: 8),
                                                Icon(
                                                  Icons.send,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
        desktop: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width * 1,
          color: AppColor.greyColor,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(
                    text: "CONTACT",
                    color: AppColor.redColor,
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 8),
                  TextWidget(
                    text: "Contact With Me",
                    color: AppColor.whiteColor,
                    fontsize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SmallContainerWidget(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.map_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "REHMAN DEVELOPER",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          SmallContainerWidget(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "+92-3499-856-995",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          SmallContainerWidget(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.email_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "rehmankh2256@gmail.com",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),
                          SmallContainerWidget(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_outlined,
                                  color: AppColor.redColor,
                                  size: 20,
                                ),
                                const SizedBox(height: 8),
                                TextWidget(
                                  text: "Freelance Available",
                                  color: AppColor.whiteColor,
                                  fontsize: 9,
                                  fontWeight: FontWeight.w600,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 30),
                      Container(
                        height: 430,
                        width: 600,
                        decoration: BoxDecoration(
                          color: AppColor.lightGreyColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.greyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: TextFormField(
                                          controller: nameController,
                                          keyboardType: TextInputType.name,
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Name",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor
                                                  .withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.greyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: TextFormField(
                                          controller: phoneController,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Phone",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor
                                                  .withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.greyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: TextFormField(
                                          controller: emailController,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Email",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor
                                                  .withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(
                                    child: Container(
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: AppColor.greyColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12),
                                        child: TextFormField(
                                          controller: subjectController,
                                          style: TextStyle(
                                            color: AppColor.whiteColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Your Subject",
                                            hintStyle: TextStyle(
                                              color: AppColor.whiteColor
                                                  .withOpacity(0.7),
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Container(
                                height: 180,
                                decoration: BoxDecoration(
                                  color: AppColor.greyColor,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 12),
                                  child: TextFormField(
                                    controller: messageController,
                                    maxLines: null,
                                    expands: true,
                                    style: TextStyle(
                                      color: AppColor.whiteColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Type Your Message",
                                      hintStyle: TextStyle(
                                        color: AppColor.whiteColor
                                            .withOpacity(0.7),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  insertData();
                                },
                                child: Container(
                                  height: 40,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: AppColor.greyColor,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: isLoading == true
                                      ? Center(
                                          child: CircularProgressIndicator(),
                                        )
                                      : Center(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Send Message",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              SizedBox(width: 8),
                                              Icon(
                                                Icons.send,
                                                color: Colors.white,
                                                size: 16,
                                              ),
                                            ],
                                          ),
                                        ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:portfolio/Constants/AppColor/appColor.dart';
// import 'package:portfolio/Widgets/ResponseWidget/ResponseWidget.dart';
// import 'package:portfolio/Widgets/smallContainerWidget/smallContainerWidget.dart';
// import 'package:portfolio/Widgets/textWidget/textWidget.dart';
//
// class LastPage extends StatefulWidget {
//   LastPage({super.key});
//
//   @override
//   State<LastPage> createState() => _LastPageState();
// }
//
// class _LastPageState extends State<LastPage> {
//   bool isLoading = false;
//
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController subjectController = TextEditingController();
//   TextEditingController messageController = TextEditingController();
//
//   clearFields() {
//     nameController.clear();
//     emailController.clear();
//     phoneController.clear();
//     subjectController.clear();
//     messageController.clear();
//   }
//
//   insertData() async {
//     // Validation check
//     if (nameController.text.isEmpty ||
//         emailController.text.isEmpty ||
//         phoneController.text.isEmpty ||
//         subjectController.text.isEmpty ||
//         messageController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: TextWidget(
//               text: "Please fill all fields",
//               color: AppColor.whiteColor,
//               fontsize: 18,
//               fontWeight: FontWeight.w600)));
//       return;
//     }
//
//     try {
//       isLoading = true;
//       setState(() {});
//
//       await FirebaseFirestore.instance.collection("userData").add({
//         "name": nameController.text,
//         "email": emailController.text,
//         "phone": phoneController.text,
//         "subject": subjectController.text,
//         "message": messageController.text,
//         "timestamp": FieldValue.serverTimestamp(),
//       });
//
//       isLoading = false;
//       setState(() {});
//       clearFields();
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: TextWidget(
//               text: "Data inserted successfully",
//               color: AppColor.whiteColor,
//               fontsize: 18,
//               fontWeight: FontWeight.w600)));
//     } catch (e) {
//       isLoading = false;
//       setState(() {});
//       print("Error: ${e.toString()}");
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: TextWidget(
//               text: "Error: ${e.toString()}",
//               color: AppColor.whiteColor,
//               fontsize: 18,
//               fontWeight: FontWeight.w600)));
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ResponseWidget(
//         mobile: Container(
//           height: MediaQuery.of(context).size.height * 0.95,
//           width: MediaQuery.of(context).size.width * 1,
//           color: AppColor.greyColor,
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   TextWidget(
//                     text: "CONTACT",
//                     color: AppColor.redColor,
//                     fontsize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   SizedBox(height: 8),
//                   TextWidget(
//                     text: "Contact With Me",
//                     color: AppColor.whiteColor,
//                     fontsize: 24,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   const SizedBox(height: 30),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SmallContainerWidget(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.map_outlined,
//                                     color: AppColor.redColor,
//                                     size: 10,
//                                   ),
//                                   SizedBox(height: 4),
//                                   TextWidget(
//                                     text: "REHMAN DEVELOPER",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 5,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 12),
//                             SmallContainerWidget(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.phone_outlined,
//                                     color: AppColor.redColor,
//                                     size: 10,
//                                   ),
//                                   const SizedBox(height: 4),
//                                   TextWidget(
//                                     text: "+92-3499-856-995",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 5,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 12),
//                             SmallContainerWidget(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.email_outlined,
//                                     color: AppColor.redColor,
//                                     size: 10,
//                                   ),
//                                   SizedBox(height: 4),
//                                   TextWidget(
//                                     text: "rehmankh2256@gmail.com",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 5,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             SizedBox(height: 12),
//                             SmallContainerWidget(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.check_outlined,
//                                     color: AppColor.redColor,
//                                     size: 10,
//                                   ),
//                                   const SizedBox(height: 4),
//                                   TextWidget(
//                                     text: "Freelance Available",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 5,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(width: 10),
//                         Container(
//                           height: 350,
//                           width: 280,
//                           decoration: BoxDecoration(
//                             color: AppColor.lightGreyColor,
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 10),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Row(
//                                   children: [
//                                     // 🔹 Name Field
//                                     Expanded(
//                                       child: Container(
//                                         height: 35,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Center(
//                                           child: Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 horizontal: 8),
//                                             child: TextFormField(
//                                               controller: nameController,
//                                               textAlignVertical:
//                                               TextAlignVertical.center,
//                                               style: TextStyle(
//                                                 color: AppColor.whiteColor,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                               decoration: InputDecoration(
//                                                 isCollapsed: true,
//                                                 border: InputBorder.none,
//                                                 hintText: "Enter Your Name",
//                                                 hintStyle: TextStyle(
//                                                   color: AppColor.whiteColor
//                                                       .withOpacity(0.7),
//                                                   fontSize: 12,
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(width: 12),
//
//                                     // 🔹 Phone Field
//                                     Expanded(
//                                       child: Container(
//                                         height: 35,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Center(
//                                           child: Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 horizontal: 8),
//                                             child: TextFormField(
//                                               controller: phoneController,
//                                               textAlignVertical:
//                                               TextAlignVertical.center,
//                                               style: TextStyle(
//                                                 color: AppColor.whiteColor,
//                                                 fontSize: 12,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                               decoration: InputDecoration(
//                                                 isCollapsed: true,
//                                                 border: InputBorder.none,
//                                                 hintText: "Enter Your Phone",
//                                                 hintStyle: TextStyle(
//                                                   color: AppColor.whiteColor
//                                                       .withOpacity(0.7),
//                                                   fontSize: 12,
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(height: 12),
//                                 Row(
//                                   children: [
//                                     // 🔹 Email Field
//                                     Expanded(
//                                       child: Container(
//                                         height: 35,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Center(
//                                           child: Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 horizontal: 8),
//                                             child: TextFormField(
//                                               controller: emailController,
//                                               textAlignVertical:
//                                               TextAlignVertical.center,
//                                               style: TextStyle(
//                                                 color: AppColor.whiteColor,
//                                                 fontSize: 10,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                               decoration: InputDecoration(
//                                                 isCollapsed: true,
//                                                 border: InputBorder.none,
//                                                 hintText: "Enter Your Email",
//                                                 hintStyle: TextStyle(
//                                                   color: AppColor.whiteColor
//                                                       .withOpacity(0.7),
//                                                   fontSize: 10,
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//
//                                     const SizedBox(width: 12),
//
//                                     // 🔹 Subject Field
//                                     Expanded(
//                                       child: Container(
//                                         height: 35,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Center(
//                                           child: Padding(
//                                             padding: const EdgeInsets.symmetric(
//                                                 horizontal: 8),
//                                             child: TextFormField(
//                                               controller: subjectController,
//                                               textAlignVertical:
//                                               TextAlignVertical.center,
//                                               style: TextStyle(
//                                                 color: AppColor.whiteColor,
//                                                 fontSize: 10,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                               decoration: InputDecoration(
//                                                 isCollapsed: true,
//                                                 border: InputBorder.none,
//                                                 hintText: "Enter Your Subject",
//                                                 hintStyle: TextStyle(
//                                                   color: AppColor.whiteColor
//                                                       .withOpacity(0.7),
//                                                   fontSize: 10,
//                                                   fontWeight: FontWeight.w500,
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 12),
//                                 Container(
//                                   height: 170,
//                                   decoration: BoxDecoration(
//                                     color: AppColor.greyColor,
//                                     borderRadius: BorderRadius.circular(6),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 8, vertical: 12),
//                                     child: TextFormField(
//                                       controller: messageController,
//                                       maxLines: null,
//                                       expands: true,
//                                       style: TextStyle(
//                                         color: AppColor.whiteColor,
//                                         fontSize: 10,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                       decoration: InputDecoration(
//                                         border: InputBorder.none,
//                                         hintText: "Type Your Message",
//                                         hintStyle: TextStyle(
//                                           color: AppColor.whiteColor
//                                               .withOpacity(0.7),
//                                           fontSize: 10,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 20),
//                                 GestureDetector(
//                                   onTap: () {
//                                     insertData();
//                                   },
//                                   child: Container(
//                                     height: 40,
//                                     width: 220,
//                                     decoration: BoxDecoration(
//                                       color: AppColor.greyColor,
//                                       borderRadius: BorderRadius.circular(6),
//                                     ),
//                                     child: isLoading == true
//                                         ? Center(
//                                       child: CircularProgressIndicator(
//                                         color: AppColor.whiteColor,
//                                       ),
//                                     )
//                                         : Center(
//                                       child: Row(
//                                         mainAxisAlignment:
//                                         MainAxisAlignment.center,
//                                         children: [
//                                           Text(
//                                             "Send Message",
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w600,
//                                             ),
//                                           ),
//                                           SizedBox(width: 8),
//                                           Icon(
//                                             Icons.send,
//                                             color: Colors.white,
//                                             size: 16,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         tablet: Container(
//           height: MediaQuery.of(context).size.height * 0.95,
//           width: MediaQuery.of(context).size.width * 1,
//           color: AppColor.greyColor,
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   TextWidget(
//                     text: "CONTACT",
//                     color: AppColor.redColor,
//                     fontsize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   const SizedBox(height: 8),
//                   TextWidget(
//                     text: "Contact With Me",
//                     color: AppColor.whiteColor,
//                     fontsize: 24,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   const SizedBox(height: 30),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             SmallContainerWidget(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.map_outlined,
//                                     color: AppColor.redColor,
//                                     size: 20,
//                                   ),
//                                   const SizedBox(height: 8),
//                                   TextWidget(
//                                     text: "REHMAN DEVELOPER",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 9,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 12),
//                             SmallContainerWidget(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.phone_outlined,
//                                     color: AppColor.redColor,
//                                     size: 20,
//                                   ),
//                                   const SizedBox(height: 8),
//                                   TextWidget(
//                                     text: "+92-3499-856-995",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 9,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 12),
//                             SmallContainerWidget(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.email_outlined,
//                                     color: AppColor.redColor,
//                                     size: 20,
//                                   ),
//                                   const SizedBox(height: 8),
//                                   TextWidget(
//                                     text: "rehmankh2256@gmail.com",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 9,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 12),
//                             SmallContainerWidget(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                   Icon(
//                                     Icons.check_outlined,
//                                     color: AppColor.redColor,
//                                     size: 20,
//                                   ),
//                                   const SizedBox(height: 8),
//                                   TextWidget(
//                                     text: "Freelance Available",
//                                     color: AppColor.whiteColor,
//                                     fontsize: 9,
//                                     fontWeight: FontWeight.w600,
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(width: 30),
//                         Container(
//                           height: 450,
//                           width: 500,
//                           decoration: BoxDecoration(
//                             color: AppColor.lightGreyColor,
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 25, vertical: 10),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Expanded(
//                                       child: Container(
//                                         height: 40,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: TextFormField(
//                                             controller: nameController,
//                                             keyboardType: TextInputType.name,
//                                             style: TextStyle(
//                                               color: AppColor.whiteColor,
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                             decoration: InputDecoration(
//                                               border: InputBorder.none,
//                                               hintText: "Enter Your Name",
//                                               hintStyle: TextStyle(
//                                                 color: AppColor.whiteColor
//                                                     .withOpacity(0.7),
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(width: 12),
//                                     Expanded(
//                                       child: Container(
//                                         height: 40,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: TextFormField(
//                                             controller: phoneController,
//                                             keyboardType: TextInputType.number,
//                                             style: TextStyle(
//                                               color: AppColor.whiteColor,
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                             decoration: InputDecoration(
//                                               border: InputBorder.none,
//                                               hintText: "Enter Your Phone",
//                                               hintStyle: TextStyle(
//                                                 color: AppColor.whiteColor
//                                                     .withOpacity(0.7),
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 12),
//                                 Row(
//                                   children: [
//                                     Expanded(
//                                       child: Container(
//                                         height: 40,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: TextFormField(
//                                             controller: emailController,
//                                             keyboardType:
//                                             TextInputType.emailAddress,
//                                             style: TextStyle(
//                                               color: AppColor.whiteColor,
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                             decoration: InputDecoration(
//                                               border: InputBorder.none,
//                                               hintText: "Enter Your Email",
//                                               hintStyle: TextStyle(
//                                                 color: AppColor.whiteColor
//                                                     .withOpacity(0.7),
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(width: 12),
//                                     Expanded(
//                                       child: Container(
//                                         height: 40,
//                                         decoration: BoxDecoration(
//                                           color: AppColor.greyColor,
//                                           borderRadius:
//                                           BorderRadius.circular(6),
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.symmetric(
//                                               horizontal: 10),
//                                           child: TextFormField(
//                                             controller: subjectController,
//                                             keyboardType: TextInputType.name,
//                                             style: TextStyle(
//                                               color: AppColor.whiteColor,
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                             decoration: InputDecoration(
//                                               border: InputBorder.none,
//                                               hintText: "Enter Your Subject",
//                                               hintStyle: TextStyle(
//                                                 color: AppColor.whiteColor
//                                                     .withOpacity(0.7),
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.w500,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 12),
//                                 Container(
//                                   height: 220,
//                                   decoration: BoxDecoration(
//                                     color: AppColor.greyColor,
//                                     borderRadius: BorderRadius.circular(6),
//                                   ),
//                                   child: Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 12, vertical: 12),
//                                     child: TextFormField(
//                                       controller: messageController,
//                                       maxLines: null,
//                                       expands: true,
//                                       style: TextStyle(
//                                         color: AppColor.whiteColor,
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                       decoration: InputDecoration(
//                                         border: InputBorder.none,
//                                         hintText: "Type Your Message",
//                                         hintStyle: TextStyle(
//                                           color: AppColor.whiteColor
//                                               .withOpacity(0.7),
//                                           fontSize: 13,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(height: 20),
//                                 GestureDetector(
//                                   onTap: () => insertData(),
//                                   child: Container(
//                                     height: 40,
//                                     width: 250,
//                                     decoration: BoxDecoration(
//                                       color: AppColor.greyColor,
//                                       borderRadius: BorderRadius.circular(6),
//                                     ),
//                                     child: isLoading == true
//                                         ? Center(
//                                       child: CircularProgressIndicator(
//                                         color: AppColor.whiteColor,
//                                       ),
//                                     )
//                                         : Center(
//                                       child: Row(
//                                         mainAxisAlignment:
//                                         MainAxisAlignment.center,
//                                         children: [
//                                           Text(
//                                             "Send Message",
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w600,
//                                             ),
//                                           ),
//                                           SizedBox(width: 8),
//                                           Icon(
//                                             Icons.send,
//                                             color: Colors.white,
//                                             size: 16,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         desktop: Container(
//           height: MediaQuery.of(context).size.height * 0.95,
//           width: MediaQuery.of(context).size.width * 1,
//           color: AppColor.greyColor,
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(30.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   TextWidget(
//                     text: "CONTACT",
//                     color: AppColor.redColor,
//                     fontsize: 16,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   const SizedBox(height: 8),
//                   TextWidget(
//                     text: "Contact With Me",
//                     color: AppColor.whiteColor,
//                     fontsize: 24,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   const SizedBox(height: 30),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           SmallContainerWidget(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.map_outlined,
//                                   color: AppColor.redColor,
//                                   size: 20,
//                                 ),
//                                 const SizedBox(height: 8),
//                                 TextWidget(
//                                   text: "REHMAN DEVELOPER",
//                                   color: AppColor.whiteColor,
//                                   fontsize: 9,
//                                   fontWeight: FontWeight.w600,
//                                 )
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           SmallContainerWidget(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.phone_outlined,
//                                   color: AppColor.redColor,
//                                   size: 20,
//                                 ),
//                                 const SizedBox(height: 8),
//                                 TextWidget(
//                                   text: "+92-3499-856-995",
//                                   color: AppColor.whiteColor,
//                                   fontsize: 9,
//                                   fontWeight: FontWeight.w600,
//                                 )
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           SmallContainerWidget(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.email_outlined,
//                                   color: AppColor.redColor,
//                                   size: 20,
//                                 ),
//                                 const SizedBox(height: 8),
//                                 TextWidget(
//                                   text: "rehmankh2256@gmail.com",
//                                   color: AppColor.whiteColor,
//                                   fontsize: 9,
//                                   fontWeight: FontWeight.w600,
//                                 )
//                               ],
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           SmallContainerWidget(
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Icon(
//                                   Icons.check_outlined,
//                                   color: AppColor.redColor,
//                                   size: 20,
//                                 ),
//                                 const SizedBox(height: 8),
//                                 TextWidget(
//                                   text: "Freelance Available",
//                                   color: AppColor.whiteColor,
//                                   fontsize: 9,
//                                   fontWeight: FontWeight.w600,
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(width: 30),
//                       Container(
//                         height: 430,
//                         width: 600,
//                         decoration: BoxDecoration(
//                           color: AppColor.lightGreyColor,
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 25, vertical: 10),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Row(
//                                 children: [
//                                   Expanded(
//                                     child: Container(
//                                       height: 45,
//                                       decoration: BoxDecoration(
//                                         color: AppColor.greyColor,
//                                         borderRadius: BorderRadius.circular(6),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 12),
//                                         child: TextFormField(
//                                           controller: nameController,
//                                           keyboardType: TextInputType.name,
//                                           style: TextStyle(
//                                             color: AppColor.whiteColor,
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             hintText: "Enter Your Name",
//                                             hintStyle: TextStyle(
//                                               color: AppColor.whiteColor
//                                                   .withOpacity(0.7),
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(width: 12),
//                                   Expanded(
//                                     child: Container(
//                                       height: 45,
//                                       decoration: BoxDecoration(
//                                         color: AppColor.greyColor,
//                                         borderRadius: BorderRadius.circular(6),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 12),
//                                         child: TextFormField(
//                                           controller: phoneController,
//                                           keyboardType: TextInputType.number,
//                                           style: TextStyle(
//                                             color: AppColor.whiteColor,
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             hintText: "Enter Your Phone",
//                                             hintStyle: TextStyle(
//                                               color: AppColor.whiteColor
//                                                   .withOpacity(0.7),
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 12),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                     child: Container(
//                                       height: 45,
//                                       decoration: BoxDecoration(
//                                         color: AppColor.greyColor,
//                                         borderRadius: BorderRadius.circular(6),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 12),
//                                         child: TextFormField(
//                                           controller: emailController,
//                                           keyboardType:
//                                           TextInputType.emailAddress,
//                                           style: TextStyle(
//                                             color: AppColor.whiteColor,
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             hintText: "Enter Your Email",
//                                             hintStyle: TextStyle(
//                                               color: AppColor.whiteColor
//                                                   .withOpacity(0.7),
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(width: 12),
//                                   Expanded(
//                                     child: Container(
//                                       height: 45,
//                                       decoration: BoxDecoration(
//                                         color: AppColor.greyColor,
//                                         borderRadius: BorderRadius.circular(6),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 12),
//                                         child: TextFormField(
//                                           controller: subjectController,
//                                           style: TextStyle(
//                                             color: AppColor.whiteColor,
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.w500,
//                                           ),
//                                           decoration: InputDecoration(
//                                             border: InputBorder.none,
//                                             hintText: "Enter Your Subject",
//                                             hintStyle: TextStyle(
//                                               color: AppColor.whiteColor
//                                                   .withOpacity(0.7),
//                                               fontSize: 13,
//                                               fontWeight: FontWeight.w500,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 12),
//                               Container(
//                                 height: 180,
//                                 decoration: BoxDecoration(
//                                   color: AppColor.greyColor,
//                                   borderRadius: BorderRadius.circular(6),
//                                 ),
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(
//                                       horizontal: 12, vertical: 12),
//                                   child: TextFormField(
//                                     controller: messageController,
//                                     maxLines: null,
//                                     expands: true,
//                                     style: TextStyle(
//                                       color: AppColor.whiteColor,
//                                       fontSize: 13,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                     decoration: InputDecoration(
//                                       border: InputBorder.none,
//                                       hintText: "Type Your Message",
//                                       hintStyle: TextStyle(
//                                         color: AppColor.whiteColor
//                                             .withOpacity(0.7),
//                                         fontSize: 13,
//                                         fontWeight: FontWeight.w500,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 20),
//                               GestureDetector(
//                                 onTap: () {
//                                   insertData();
//                                 },
//                                 child: Container(
//                                   height: 40,
//                                   width: 250,
//                                   decoration: BoxDecoration(
//                                     color: AppColor.greyColor,
//                                     borderRadius: BorderRadius.circular(6),
//                                   ),
//                                   child: isLoading == true
//                                       ? Center(
//                                     child: CircularProgressIndicator(
//                                       color: AppColor.whiteColor,
//                                     ),
//                                   )
//                                       : Center(
//                                     child: Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.center,
//                                       children: [
//                                         Text(
//                                           "Send Message",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                             fontSize: 13,
//                                             fontWeight: FontWeight.w600,
//                                           ),
//                                         ),
//                                         SizedBox(width: 8),
//                                         Icon(
//                                           Icons.send,
//                                           color: Colors.white,
//                                           size: 16,
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 30),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }