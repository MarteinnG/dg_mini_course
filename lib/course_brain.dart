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
      answer2: 'they provide safe handling and stowage information.'),
    QuestionBankCh1(
      question1: 'When are freight forwarder and operator‘s DG acceptance staff required to perform a check to verify that all packages are correctly marked and labelled?',
      answer1: 'Before accepting the consignment for carriage by air',
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
      question1: 'What are the two types of labels?',
      answer1: 'Hazard label and Handling label x',
      answer2: 'CAO label and Classification label'),
    QuestionBankCh3(
      question1: 'Who is responsible for labelling a package or overpack containing DG?',
      answer1: 'The shipper x',
      answer2: 'The operator'),
    QuestionBankCh3(
      question1: 'What is the operator‘s responsibility in terms of labelling package or overpack containing DG?',
      answer1: 'The operator is responsible for labelling all packages and overpacks containing DG.',
      answer2: 'The operator is responsible only for replacing labels that becomes detached or unidentifiable during transport. x'),
    ];

    //Chapter 4 – Hazard- and Handling Labels
  List<QuestionBankCh4> questAnsHazAndHandLabels = [
    QuestionBankCh4(
      question1: 'Is it mandatory to show the nature of hazard in the lower half of the hazard label?',
      answer1: 'Yes, the nature of hazard should always be shown on the hazard label.',
      answer2: 'No, except for hazard label for radioactive material (Class 7). x'),
    QuestionBankCh4(
      question1: 'What is the main purpose of the handling labels?',
      answer1: 'To provide information on the proper handling and stowage of packages containing DG  x',
      answer2: 'To provide information on subsidiary hazard posed by the article or substance.'),
    QuestionBankCh4(
      question1: 'What is the meaning of the CAO label?',
      answer1: 'That packages on which it appears must not be loaded on passenger aircraft x',
      answer2: 'That packages on which it appears can be loaded on either passenger aircraft or cargo aircraft.'),
  ];

  void nextQuestionCh1(int userChoice) {
    if(userChoice == 2 && questionNumber == 0){
      questionNumber = 1;
    }
    else if(userChoice == 1 && questionNumber == 1){
      questionNumber = 2;
    }
  }

  void restart(){
    questionNumber = 0;
  }

  void nextQuestionCh2(int userChoice) {
    if(userChoice == 1 && questionNumber == 0){
      questionNumber = 1;
    }
    else if(userChoice == 2 && questionNumber == 1){
      questionNumber = 2;
    }
  }

  void nextQuestionCh3(int userChoice) {
    if(userChoice == 2 && questionNumber == 0){
      questionNumber = 1;
    }
    else if(userChoice == 2 && questionNumber == 1){
      questionNumber = 2;
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



