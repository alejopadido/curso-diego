import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:flutter/material.dart';

// class DropDownColorsMenu extends StatefulWidget {
//   const DropDownColorsMenu({super.key});

//   @override
//   State<DropDownColorsMenu> createState() => _DropDownColorsMenuState();
// }

// class _DropDownColorsMenuState extends State<DropDownColorsMenu> {
//   Color _value = AppColors.orange;

//   @override
//   Widget build(BuildContext context) {
//     return Flexible(
//       child: DropdownButton<Color>(
//         items: const [
//           DropdownMenuItem<Color>(
//             child: Text('orange'),
//             value: AppColors.orange,
//           ),
//           DropdownMenuItem<Color>(
//             child: Text('Grey'),
//             value: AppColors.grey,
//           ),
//           DropdownMenuItem<Color>(
//             child: Text('Purple'),
//             value: AppColors.purple,
//           ),
//           DropdownMenuItem<Color>(
//             child: Text('Purple'),
//             value: AppColors.purple,
//           ),
//           DropdownMenuItem<Color>(
//             child: Text('Blue'),
//             value: AppColors.lightBlue,
//           ),
//         ],
//         onChanged: (Color? c) {
//           setState(() {
//             _value = c!;
//           });
//         },
//         value: _value,
//       ),
//     );
//   }
// }
import 'package:dieguin_app/core/constants/app.colors.dart';
import 'package:flutter/material.dart';

class DropDownColorsMenu extends StatefulWidget {
  DropDownColorsMenu({
    super.key,
  });
  Color value = AppColors.grey;

  @override
  State<DropDownColorsMenu> createState() => _DropDownColorsMenuState();
}

class _DropDownColorsMenuState extends State<DropDownColorsMenu> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: DropdownButton<Color>(
        dropdownColor: Colors.grey.shade100,
        hint: const Text('Choose a color for your project'),
        items: const [
          DropdownMenuItem<Color>(
            value: AppColors.orange,
            child: Center(child: Text('Orange')),
          ),
          DropdownMenuItem<Color>(
            value: AppColors.grey,
            child: Center(child: Text('Grey')),
          ),
          DropdownMenuItem<Color>(
            value: AppColors.purple,
            child: Center(child: Text('Purple')),
          ),
          DropdownMenuItem<Color>(
            value: AppColors.lightGreen,
            child: Center(child: Text('Green')),
          ),
          DropdownMenuItem<Color>(
            value: AppColors.lightBlue,
            child: Center(child: Text('Blue')),
          ),
        ],
        onChanged: (Color? c) {
          setState(() {
            widget.value = c!;
          });
        },
        value: widget.value,
        icon: Icon(Icons.arrow_drop_down_circle, color: widget.value),
      ),
    );
  }
}
