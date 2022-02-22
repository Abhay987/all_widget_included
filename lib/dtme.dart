import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Dttm extends StatefulWidget {
  const Dttm({ Key? key }) : super(key: key);

  @override
  _DttmState createState() => _DttmState();
}

class _DttmState extends State<Dttm> {

 /*var _dttm;
  var timeStamp;
  var anothertimeStamp;
  var otherdttm;  */
  var selectedDate;
  var selectedTime;

  @override
  void initState() {
    /*
    _dttm=DateTime.now();
      timeStamp=DateTime.now().millisecondsSinceEpoch;
      anothertimeStamp=DateTime.fromMillisecondsSinceEpoch(timeStamp);
      otherdttm=DateFormat('dd-MM-yyyy').format(_dttm);     */
      selectedDate=DateTime.now();
      selectedTime=TimeOfDay.now();
    super.initState();
  }
  _selectDate(BuildContext context) async{
   DateTime? picked= await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2000), lastDate: DateTime(2030),);
    if (picked !=null && picked !=selectedDate){
          setState(() {
            selectedDate=picked;
          });
    }
  }
   _selectTime(BuildContext context) async{
   TimeOfDay? picked= await showTimePicker(
     context: context,
     initialTime: selectedTime);
    if (picked !=null && picked !=selectedTime){
          setState(() {
            selectedTime=picked;
          });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data & Time'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [           
         /*  Text('Date & time is : -   $_dttm'),
            Text('Time Stamp is : -   $timeStamp'),
            Text('Another Time Stamp is : -   $anothertimeStamp'),
            Text('Date only is : -   $otherdttm'),  */
             Text('Date & time is : -${DateTime.now()}'),
             Text('Time Stamp is : -   ${DateTime.now().millisecondsSinceEpoch}'),
             Text('Another Time Stamp is : -   ${DateTime.fromMillisecondsSinceEpoch(DateTime.now().millisecondsSinceEpoch)}'),
             Text('Date only is : -   ${DateFormat('dd-MM-yyyy').format(DateTime.now())}'),
             Text('New Date is  : -   ${DateTime.parse(DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()))}'),
            Text('Select Date is :  - ${DateFormat('dd-MM-yyyy').format(selectedDate)}'),
             ElevatedButton(onPressed: (){            
             _selectDate(context);
             }, child: const Text('Select Date')),
             Text('Select Time is : -  ${selectedTime.hour} hour  :  ${selectedTime.minute} mins'),
             ElevatedButton(onPressed: (){
               _selectTime(context);
             }, child: const Text('Select Time')),
          ],
        ),
      )
    );
  }
}