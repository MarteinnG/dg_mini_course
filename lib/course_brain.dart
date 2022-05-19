import 'question_bank.dart';
import 'course_material.dart';

class CourseBrain {
  //List<CourseMaterial> get _material => [
    //CourseMaterial(
      //  ch1General: 'Once upon a time was a gentleman who wanted to carry a DG by air',
        //ch2Marking: '',
        //ch3Labelling: '',
        //ch4Xxx: ''),
  //];

  List<QuestionBank> questions_answers = [
    //Chapter 1 – General
    QuestionBank(
      question1: 'Who is responsible for correct marking and labelling of packages presented for transport?',
      answer1: 'The shipper x',
      answer2: 'The freight forwarder.',
      question2: 'One of the four general purposes which the marks and labels fulfil is;',
      answer3: 'they provide correct segregation procedure.',
      answer4: 'they provide safe handling and stowage information. x',
      question3: 'When are freight forwarder and operator‘s DG acceptance staff required to perform a check to verify that all packages are correctly marked and labelled?',
      answer5: 'Before accepting the consignment for carriage by air x',
      answer6: 'Before loading the consignment to the aircraft.'),
    //Chapter 2 – Marking
    QuestionBank(
      question1: 'There are two types of package marks.  What are they?',
      answer1: 'Handling label marks and hazard label marks.',
      answer2: 'Marks which identify the use of a packaging and marks which identify the design or specification of a packaging. x',
      question2: 'What three „packagings use marks“ are required on all packages or overpacks containing dangerous goods?',
      answer3: 'Proper shipping name, UN or ID Number, full name and address of the shipper and consignee. x',
      answer4: 'UN or ID Number, Environmentally Hazardous Substance mark, Proper shipping name.',
      question3: 'For each package and/or overpack containing DG that requires marking, the shipper must remove or obliterate any irrelevant marks.',
      answer5: 'True  x',
      answer6: 'False'),
    //Chapter 3 – Labelling
    QuestionBank(
      question1: '',
      answer1: '',
      answer2: '',
      question2: '',
      answer3: '',
      answer4: '',
      question3: '',
      answer5: '',
      answer6: ''),
    //Chapter 4 – xxx
    QuestionBank(
      question1: '',
      answer1: '',
      answer2: '',
      question2: '',
      answer3: '',
      answer4: '',
      question3: '',
      answer5: '',
      answer6: ''),
  ];
}

int _courseNumber = 0;

//String getCourseMaterial(){
 // return _material[_courseNumber].ch1General;
//}

