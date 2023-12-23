import 'package:flutter/material.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Create New Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
                validator: (txt) {
                  if (txt == null || txt.isEmpty) {
                    return 'Requried';
                  } else if (txt.contains('@gmail.com') == false)
                    return 'Not a valid Email';
                  else
                    return null;
                },
                decoration: const InputDecoration(
                  hintText: 'abc@gamil.com',
                  labelText: 'Email',
                )),
            TextFormField(
                validator: (txt) {
                  if (txt == null || txt.isEmpty) return 'Requried';
                },
                decoration: const InputDecoration(
                  hintText: 'Abdul',
                  labelText: 'Fist Name',
                )),
            TextFormField(
                validator: (txt) {
                  if (txt == null || txt.isEmpty) return 'Requried';
                },
                decoration: const InputDecoration(
                  hintText: 'Wahab',
                  labelText: 'Last Name',
                )),
            TextFormField(
                decoration: const InputDecoration(
                    labelText: 'Father Name(optional)',
                    hintText: 'Father Name')),
            TextFormField(
              validator: (txt) {
                if (txt == null || txt.isEmpty) return 'Requried';
              },
              decoration: const InputDecoration(
                  labelText: 'Phone N0.', hintText: '+92**********'),
            ),
            TextFormField(
              validator: (txt) {
                if (txt == null || txt.isEmpty) return 'Requried';
              },
              decoration: const InputDecoration(
                  labelText: 'Qualification', hintText: 'Qualification'),
            ),
            TextFormField(
              validator: (txt) {
                if (txt == null || txt.isEmpty) return 'Required';
              },
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: 'Password', hintText: 'Password'),
            ),
            TextFormField(
              validator: (txt) {
                if (txt == null || txt.isEmpty) return 'Required';
              },
              obscureText: true,
              decoration: const InputDecoration(
                  labelText: 'Confirm Password', hintText: 'Confirm Password'),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Submit')),
          ],
        ),
      ),
    );
  }
}
