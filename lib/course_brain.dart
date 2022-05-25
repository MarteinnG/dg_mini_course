import 'package:dg_mini_course/general_chapter1.dart';

import 'question_bank.dart';


class CourseBrain {

  int questionNumber = 0;

  //Chapter 1 – General
  List<QuestionBankCh1> questAnsGeneral = [
    QuestionBankCh1(
      question1: 'Who is responsible for correct marking and labelling of packages presented for transport?',
      answer1: 'The shipper',
      answer2: 'The freight forwarder.'),
    QuestionBankCh1(
      question1: 'One of the four general purposes which the marks and labels fulfil is;',
      answer1: 'they provide correct segregation procedure.',
      answer2: 'they provide safe handling and stowage information. x'),
    QuestionBankCh1(
      question1: 'When are freight forwarder and operator‘s DG acceptance staff required to perform a check to verify that all packages are correctly marked and labelled?',
      answer1: 'Before accepting the consignment for carriage by air x',
      answer2: 'Before loading the consignment to the aircraft.'),
    ];

  //Chapter 2 – Marking
  List<QuestionBankCh2> questAnsMarking = [
    QuestionBankCh2(
      question1: 'There are two types of package marks.  What are they?',
      answer1: 'Handling label marks and hazard label marks.',
      answer2: 'Marks which identify the use of a packaging and marks which identify the design or specification of a packaging. x'),
    QuestionBankCh2(
      question1: 'What three „packagings use marks“ are required on all packages or overpacks containing dangerous goods?',
      answer1: 'Proper shipping name, UN or ID Number, full name and address of the shipper and consignee. x',
      answer2: 'UN or ID Number, Environmentally Hazardous Substance mark, Proper shipping name.'),
    QuestionBankCh2(
      question1: 'For each package and/or overpack containing DG that requires marking, the shipper must remove or obliterate any irrelevant marks.',
      answer1: 'True  x',
      answer2: 'False'),
  ];

    //Chapter 3 – Labelling
  List<QuestionBankCh3> questAnsLabelling = [
    QuestionBankCh3(
      question1: 'jjkkll',
      answer1: 'kkejjj',
      answer2: 'kkkllee'),
    QuestionBankCh3(
      question1: '',
      answer1: '',
      answer2: ''),
    QuestionBankCh3(
      question1: '',
      answer1: '',
      answer2: ''),
    ];

    //Chapter 4 – xxx
  List<QuestionBankCh4> questAnsHazAndHandLabels = [
    QuestionBankCh4(
      question1: 'kkoll',
      answer1: 'kkllo',
      answer2: 'jjkekk'),
    QuestionBankCh4(
      question1: '',
      answer1: '',
      answer2: ''),
    QuestionBankCh4(
      question1: '',
      answer1: '',
      answer2: ''),
  ];

  void nextQuestionCh1(int userChoice) {
    if(userChoice == 2 && questionNumber == 0){
      questionNumber = 1;
    }
    //else if(userChoice == 1 && questionNumber == 0){
      //print('Marking');
    //}
    else if(userChoice == 1 && questionNumber == 1){
      questionNumber = 2;
    }
    //else if(userChoice == 2 && questionNumber == 1){
      //print('Marking');
    //}
    //else if(userChoice == 1 && questionNumber == 2){
      //print('Marking');
    //}
    //else if(userChoice == 2 && questionNumber == 2){
      //return General();
   // }
  }

  void nextQuestionCh2(int userChoice) {
    if(userChoice == 2 && questionNumber == 0){
      questionNumber = 1;
    }
    else if(userChoice == 1 && questionNumber == 0){
      print('Marking');
    }
    else if(userChoice == 1 && questionNumber == 1){
      questionNumber = 2;
    }
    else if(userChoice == 2 && questionNumber == 1){
      print('Marking');
    }
    else if(userChoice == 1 && questionNumber == 2){
      print('Marking');
    }
    else if(userChoice == 2 && questionNumber == 2){
      print('Goes back to General');
    }
  }

  void nextQuestionCh3(int userChoice) {
    if(userChoice == 2 && questionNumber == 0){
      questionNumber = 1;
    }
    else if(userChoice == 1 && questionNumber == 0){
      print('Marking');
    }
    else if(userChoice == 1 && questionNumber == 1){
      questionNumber = 2;
    }
    else if(userChoice == 2 && questionNumber == 1){
      print('Marking');
    }
    else if(userChoice == 1 && questionNumber == 2){
      print('Marking');
    }
    else if(userChoice == 2 && questionNumber == 2){
      print('Goes back to General');
    }
  }

  void nextQuestionCh4(int userChoice) {
    if(userChoice == 2 && questionNumber == 0){
      questionNumber = 1;
    }
    else if(userChoice == 1 && questionNumber == 0){
      print('Marking');
    }
    else if(userChoice == 1 && questionNumber == 1){
      questionNumber = 2;
    }
    else if(userChoice == 2 && questionNumber == 1){
      print('Marking');
    }
    else if(userChoice == 1 && questionNumber == 2){
      print('Marking');
    }
    else if(userChoice == 2 && questionNumber == 2){
      print('Goes back to General');
    }
  }

  //General
  String getQuestionBankCh1(){
    return questAnsGeneral[questionNumber].question1;
  }

  String getAnswer1Ch1(){
    return questAnsGeneral[questionNumber].answer1;
  }

  String getAnswer2Ch1(){
    return questAnsGeneral[questionNumber].answer2;
  }

  //Marking
  String getQuestionBankCh2(){
    return questAnsMarking[questionNumber].question1;
  }

  String getAnswer1Ch2(){
    return questAnsMarking[questionNumber].answer1;
  }

  String getAnswer2Ch2(){
    return questAnsMarking[questionNumber].answer2;
  }

  //Labelling
  String getQuestionBankCh3(){
    return questAnsLabelling[questionNumber].question1;
  }

  String getAnswer1Ch3(){
    return questAnsLabelling[questionNumber].answer1;
  }

  String getAnswer2Ch3(){
    return questAnsLabelling[questionNumber].answer2;
  }

  //Hazard and Handling Labels
  String getQuestionBankCh4(){
    return questAnsHazAndHandLabels[questionNumber].question1;
  }

  String getAnswer1Ch4(){
    return questAnsHazAndHandLabels[questionNumber].answer1;
  }

  String getAnswer2Ch4(){
    return questAnsHazAndHandLabels[questionNumber].answer2;
  }
}



