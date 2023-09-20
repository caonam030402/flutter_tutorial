import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/app_text_field.dart';
import 'package:flutter_application_1/components/tool_bar.dart';
import 'package:flutter_application_1/components/user_avatar.dart';
import 'package:flutter_application_1/config/app_strings.dart';
import 'package:flutter_application_1/styles/app_colors.dart';

enum Gender { none, female, male, other }

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ToolBar(title: AppStrings.editProfile),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(children: [
          Stack(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: UserAvatar(
                  size: 120,
                ),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: const Icon(
                      Icons.edit,
                      size: 20,
                      color: AppColors.black,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const AppTextField(
            hind: AppStrings.firstName,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hind: AppStrings.lastName,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hind: AppStrings.phoneNumber,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hind: AppStrings.location,
          ),
          const SizedBox(
            height: 16,
          ),
          const AppTextField(
            hind: AppStrings.birthday,
          ),
          RadioListTile(
              title: const Text(AppStrings.female),
              value: Gender.female,
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = Gender.female;
                });
              }),
          RadioListTile(
              title: const Text(AppStrings.male),
              value: Gender.male,
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = Gender.male;
                });
              }),
          RadioListTile(
              title: const Text(AppStrings.other),
              value: Gender.other,
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = Gender.other;
                });
              })
        ]),
      ),
    );
  }
}
