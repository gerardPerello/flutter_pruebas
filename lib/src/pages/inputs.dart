import 'package:flutter/material.dart';

class InputP extends StatefulWidget {
  InputP({Key? key}) : super(key: key);

  @override
  State<InputP> createState() => _InputPState();
}

class _InputPState extends State<InputP> {
  String? _fecha = '';
  final TextEditingController _textController = TextEditingController();

  String _opcionSeleccionada = 'Toyota';
  List<String> marcas = ['Toyota', 'Honda', 'Citroen', 'Ferrari', 'Nissan'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createInputEmail(),
          Divider(),
          _createInputPassword(),
          Divider(),
          _createInputData(context),
          Divider(),
          _createDropDown()
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su nombre',
          labelText: 'Nombre',
          helperText: 'Debes de escribir el primer nombre de tu DNI',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
    );
  }

  Widget _createInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su Email',
          labelText: 'Email',
          helperText: 'Debes de escribir solamente el email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email)),
    );
  }

  Widget _createInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su Password',
          labelText: 'Password',
          helperText: 'Debes de escribir solamente la Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.password)),
    );
  }

  Widget _createInputData(BuildContext context) {
    return TextField(
      enableInteractiveSelection: true,
      controller: _textController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Escriba su fecha de nacimiento',
          labelText: 'Fecha de nacimineto',
          helperText: 'Debes de escribir solamente la fecha de nacimiento',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1999),
        lastDate: DateTime(2028));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _textController.text = _fecha!;
      });
    }
  }

  Widget _createDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOptionsDropDown(),
            onChanged: (String? newValue) {
              setState(() {
                _opcionSeleccionada = newValue!;
              });
            },
          ),
        )
      ],
    );
  }

  List<DropdownMenuItem<String>> getOptionsDropDown() {
    List<DropdownMenuItem<String>> lista = [];
    marcas.forEach((element) {
      lista.add(DropdownMenuItem(child: Text(element), value: element));
    });
    return lista;
  }
}
