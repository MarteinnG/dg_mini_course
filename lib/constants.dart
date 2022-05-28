import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const questionPageTextStyle = TextStyle(
  fontSize: 22,
  color: Colors.white,
  fontStyle: FontStyle.italic,
);

const frontpageTextStyle = TextStyle(
  fontStyle: FontStyle.italic,
  fontSize: 20.0,
);

const answerBoxTextStyle = TextStyle(
fontSize: 15.0,
fontStyle: FontStyle.italic,
);

const welcomeText = '''Welcome to the dangerous goods mini course on Marking and labeling.  
As soon as you are ready, click the button below and you will be directed to the first chapter.  
The course consists of four chapters which all have a question to be answered to continue.  
If your answer is correct you will go through to the next chapter, if not you will get another question.  
After three wrong answers, you will be brought back to read the chapter again.  
Good Luck!''';

const general = '''The correct marking and labelling of packages containing dangerous goods is an important element in the safe transport process.  Marks and labels fulfil the following general purposes:
 •	they indicate the contents of the package;
 •	they indicate that the packaging meets approved standards;
 •	they provide safe handling and stowage information;
 •	they indicate the nature of hazard(s).

The shipper is responsible for the correct marking and labelling of packages presented for transport.  The freight forwarder and operators‘s or ground service provider‘s dangerous goods acceptance staff are required to perform a check to verify that all packages are correctly marked and labelled in accordance with the requirements of the DGR, before accepting the consignment for carriage by air.''';

const marking = '''For each package and overpack containing DG that requires marking, the shipper must:
1.	check that the required marks are applied in the correct locations on the package and that the marks meet the quality and specification requirements of the Regulations;
2.	ensure that where UN specification packaging is required, that the packaging meets the requirements set out in the applicable packing instruction and the specification marks conform:
3.	remove or obliterate any irrelevant marks;
4.	ensure that all of the required marks have been applied when the package is presented to the operator.
There are two types of marks:
•	marks which identify the use of a particular packaging for a particular shipment; and
•	marks which identify the design or specification of a packaging.
As a minimum each package or overpack containing DG must be clearly marked  to show:
•	the proper shipping name(s);
•	the applicable UN or ID Numbers(s); and
•	the full name and address of the shipper and the consignee.
''';

const labelling = '''Packages containing DG must be properly labelled to indicate their contents.  There are two types of labels:
•	hazard labels, and
•	handling labels.

The shipper is responsible for labelling a package or overpack containing DG.

Labels representative of all DG required on packages within an overpack must be clearly visible or else must be reproduced on the outside of the overpack.  Only one hazard label is required for each class or division contained within the overpack.
The operator is responsible only for replacing labels that become detached or unidentifiable during transport.
''';

const hazardAndHandlingLabels = '''Packages containing DG are identified with hazard labels, that indicate the hazards posed by the contents.
Text indicating the nature of the hazard may be shown in the lower half of the hazard label but, except for hazard labels for radioactive material (Class 7), is not mandatory, unless there is a State or operator variation that requires the text.
Articles and substances that have a subsidiary hazard(s) require labels identifying all of the hazards that the article or substance poses.  The hazard labels identifying these primary and subsidiary hazards must carry the class or division number in the bottom corner.
Class 1, Explosives labels also require the compatibility group to be shown above the class number in the bottom corner.

In addition to hazard labels, handling labels are used to provide information on the proper handling and stowage of packages of DG.
Handling labels for Cargo Aircraft Only (CAO) must be used on packages that are permitted only on cargo aircraft.
''';

const congrats = '''Congratulations!!
You have successfully finished the dangerous goods mini course on Marking and Labelling.''';

const certificate = '''Here's your well deserved certificate, place it in your file.  
Well done!''';