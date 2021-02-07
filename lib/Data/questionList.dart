import 'package:sustainable_cities/Models/answersModel.dart';
import 'package:sustainable_cities/Models/questionsModel.dart';

final List<QuestionModel> questionsList = [
  QuestionModel(
    "1- Select your building's ground ?",
    [
      AnswersModels("Rocky ground", 0),
      AnswersModels("Hilly and high", 1),
      AnswersModels("Side that slope is greater than 20", 2),
      AnswersModels("Pit", 3),
      AnswersModels("Stream bed and filled ground", 4),
      AnswersModels("Aqueous ground", 5),
    ],
  ),
  QuestionModel(
    '2- If your building is reinforced concrete,select the age of your building ?',
    [
      AnswersModels("1-10 year", 0),
      AnswersModels("10-11 year", 1),
      AnswersModels("11-20 year", 3),
      AnswersModels("21-30 year", 4),
      AnswersModels("Over 31 year", 5),
    ],
  ),
  QuestionModel(
    '3- Select your load-bearing system',
    [
      AnswersModels("Steel or wooden", 0),
      AnswersModels("Reinforced concrete ", 1),
      AnswersModels("Brickwork or masonry", 2),
      AnswersModels("Stone masonry", 3),
      AnswersModels("Mudbrick", 4),
      AnswersModels("Earth-sheltered home", 5),
    ],
  ),
  QuestionModel(
    '4- Do you have basement floor and humidity problem ?',
    [
      AnswersModels("Yes,No", 0),
      AnswersModels("No,no", 1),
      AnswersModels("Yes,chronic", 2),
      AnswersModels("Stone masonry", 3),
      AnswersModels("Yes,collecting water", 5),
    ],
  ),
  QuestionModel(
    "5- Select your building's floor count(include ground floor) ?",
    [
      AnswersModels("1", 0),
      AnswersModels("2", 1),
      AnswersModels("3", 2),
      AnswersModels("4-5", 3),
      AnswersModels("6-8", 4),
      AnswersModels("9", 5),
    ],
  ),
  QuestionModel(
    "6- Select your ground floor's situation:",
    [
      AnswersModels("Same as upper floors", 0),
      AnswersModels("Inside side than other floors,but closed walls", 1),
      AnswersModels(
          "Height is more  higher than the other floors,but closed walls", 2),
      AnswersModels("Same as other floors,but no walls", 3),
      AnswersModels("Inside side than other floors, but no walls", 4),
      AnswersModels(
          "Floor  height is more than the normal floors, but no walls", 5),
    ],
  ),
  QuestionModel(
    "7- Select an option according to your  building's ledges",
    [
      AnswersModels("There is no ledges", 0),
      AnswersModels("Only balconies", 1),
      AnswersModels("The whole building have closed ledges up to 80cm", 3),
      AnswersModels("Open ledges are covered by walls", 4),
      AnswersModels("Whole building have ledges bigger than 80 cm", 5),
    ],
  ),
  QuestionModel(
    '8- Has any intervention made to the building ?',
    [
      AnswersModels("No", 0),
      AnswersModels("Some parts of inner walls were removed", 1),
      AnswersModels(
          "The windows are enlarged,windows were  opened at to the exterior walls",
          3),
      AnswersModels(
          "The additional windows were made to the whole building and walls are removed",
          4),
      AnswersModels("Interior partition and walls  completely removed", 5),
    ],
  ),
  QuestionModel(
    "9- Did the building's intended purpose change?",
    [
      AnswersModels("No", 0),
      AnswersModels(
          "It made for housing,normal floors are using for workshop", 1),
      AnswersModels(
          "Ground floor made for housing,it is using for shop or workshop", 2),
      AnswersModels("The elevator made later", 3),
      AnswersModels("Water tanks made later", 4),
      AnswersModels("Water tanks and elevator made later", 5),
    ],
  ),
  QuestionModel(
    '10- So far : ...',
    [
      AnswersModels("No repairs were made", 0),
      AnswersModels("Repairs were made with a vibrating tool", 1),
      AnswersModels(
          "Support structure's repair were made by a vibrant tool", 2),
      AnswersModels(
          "Similar interventions were made to the columns and beams", 3),
      AnswersModels("Additional floor or covering has made", 4),
      AnswersModels("A small fire broke out in the building", 5),
    ],
  ),
  QuestionModel(
    '11- The previous damages and fractures in the building...',
    [
      AnswersModels("There is no visible fractures", 0),
      AnswersModels(
          "There is microfructures in balcony or balcony corners covering", 1),
      AnswersModels("Damage where external wall column and beams junction", 2),
      AnswersModels(
          "There is horizontal microfructures on walls which are at the down side alignment of the windows",
          3),
      AnswersModels(
          "At the exterior walls,there is horizontal and vertical  fractures",
          4),
    ],
  ),
  QuestionModel(
    '12- Shape of building,planning schema: ',
    [
      AnswersModels("Square or polygon", 0),
      AnswersModels("Rectangle", 1),
      AnswersModels("Star ", 2),
      AnswersModels("The Building has depth gaps", 3),
      AnswersModels("Adjacent blocks don't have same floor level", 4),
      AnswersModels("Adjacent blocks don't have same height", 5),
    ],
  ),
];
