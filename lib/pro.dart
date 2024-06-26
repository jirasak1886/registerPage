import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/fpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<String> selected = {'Computer Science'};
  int _value = 1;
  bool _checked = false;
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FROM'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Text(
                "Major",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              SegmentedButton(
                segments: const [
                  ButtonSegment(
                    value: 'Computer Science',
                    label: Text('Computer Science'),
                    icon: Icon(Icons.computer),
                  ),
                  ButtonSegment(
                    value: 'Information Technology',
                    label: Text('Information Technology'),
                    icon: Icon(Icons.airplay_outlined),
                  ),
                ],
                selected: selected,
                onSelectionChanged: (Set<String> newSelected) {
                  setState(() {
                    selected = newSelected;
                  });
                },
              ),
              const SizedBox(height: 20),
              Text(
                "Language",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),

              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text("Thai"),
              SizedBox(width: 20), // Adjust spacing as needed
              Radio(
                value: 2,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text("English"),
              SizedBox(width: 20), // Adjust spacing as needed
              Radio(
                value: 3,
                groupValue: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
              Text("Chinese"),

              const SizedBox(height: 20),
              Center(
                child: CheckboxListTile(
                  title: const Text('Agree Condotion Terms'),
                  value: _checked,
                  onChanged: _enabled
                      ? (bool? value) {
                          setState(() {
                            _checked = value!;
                          });
                        }
                      : null,
                  controlAffinity: ListTileControlAffinity.leading,
                  side: const BorderSide(
                      color: Color.fromARGB(255, 20, 4, 100), width: 2),
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (!states.contains(MaterialState.selected)) {
                      return Colors.transparent;
                    }
                    return null;
                  }),
                ),
              ),
              FilledButton.tonal(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Firstpage()),
                  );
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
