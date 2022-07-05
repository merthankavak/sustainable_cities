import 'answer_model.dart';

class QuizModel {
  final String title;
  final List<AnswerModel> answerModelList;

  QuizModel(this.title, this.answerModelList);
}

class QuizModels {
  static final List<QuizModel> questionModels = [
    QuizModel(
      '1- Select your buildings ground ?',
      [
        AnswerModel('Rocky ground', 0),
        AnswerModel('Hilly and high', 1),
        AnswerModel('Side that slope is greater than 20', 2),
        AnswerModel('Pit', 3),
        AnswerModel('Stream bed and filled ground', 4),
      ],
    ),
    QuizModel(
      '2- If your building is reinforced concrete,select the age of your building ?',
      [
        AnswerModel("1-10 year", 0),
        AnswerModel("10-11 year", 1),
        AnswerModel("11-20 year", 3),
        AnswerModel("21-30 year", 4),
        AnswerModel("Over 31 year", 5),
      ],
    ),
    QuizModel(
      '3- Select your load-bearing system',
      [
        AnswerModel("Steel or wooden", 0),
        AnswerModel("Reinforced concrete ", 1),
        AnswerModel("Brickwork or masonry", 2),
        AnswerModel("Stone masonry", 3),
        AnswerModel("Mudbrick", 4),
      ],
    ),
    QuizModel(
      '4- Do you have basement floor and humidity problem ?',
      [
        AnswerModel("Yes,No", 0),
        AnswerModel("No,no", 1),
        AnswerModel("Yes,chronic", 2),
        AnswerModel("Stone masonry", 3),
        AnswerModel("Yes,collecting water", 5),
      ],
    ),
    QuizModel(
      "5- Select your building's floor count(include ground floor) ?",
      [
        AnswerModel("1", 0),
        AnswerModel("2", 1),
        AnswerModel("3", 2),
        AnswerModel("4-5", 3),
        AnswerModel("6-8", 4),
      ],
    ),
    QuizModel(
      "6- Select your ground floor's situation:",
      [
        AnswerModel("Same as upper floors", 0),
        AnswerModel("Inside side than other floors,but closed walls", 1),
        AnswerModel("Height is more  higher than the other floors,but closed walls", 2),
        AnswerModel("Same as other floors,but no walls", 3),
        AnswerModel("Inside side than other floors, but no walls", 4),
      ],
    ),
    QuizModel(
      "7- Select an option according to your  building's ledges",
      [
        AnswerModel("There is no ledges", 0),
        AnswerModel("Only balconies", 1),
        AnswerModel("The whole building have closed ledges up to 80cm", 3),
        AnswerModel("Open ledges are covered by walls", 4),
        AnswerModel("Whole building have ledges bigger than 80 cm", 5),
      ],
    ),
    QuizModel(
      '8- Has any intervention made to the building ?',
      [
        AnswerModel("No", 0),
        AnswerModel("Some parts of inner walls were removed", 1),
        AnswerModel("The windows are enlarged,windows were  opened at to the exterior walls", 3),
        AnswerModel(
            "The additional windows were made to the whole building and walls are removed", 4),
        AnswerModel("Interior partition and walls  completely removed", 5),
      ],
    ),
    QuizModel(
      "9- Did the building's intended purpose change?",
      [
        AnswerModel("No", 0),
        AnswerModel("It made for housing,normal floors are using for workshop", 1),
        AnswerModel("Ground floor made for housing,it is using for shop or workshop", 2),
        AnswerModel("The elevator made later", 3),
        AnswerModel("Water tanks made later", 4),
      ],
    ),
    QuizModel(
      '10- So far : ...',
      [
        AnswerModel("No repairs were made", 0),
        AnswerModel("Repairs were made with a vibrating tool", 1),
        AnswerModel("Support structure's repair were made by a vibrant tool", 2),
        AnswerModel("Similar interventions were made to the columns and beams", 3),
        AnswerModel("Additional floor or covering has made", 4),
      ],
    ),
    QuizModel(
      '11- The previous damages and fractures in the building...',
      [
        AnswerModel("There is no visible fractures", 0),
        AnswerModel("There is microfructures in balcony or balcony corners covering", 1),
        AnswerModel("Damage where external wall column and beams junction", 2),
        AnswerModel(
            "There is horizontal microfructures on walls which are at the down side alignment of the windows",
            3),
        AnswerModel("At the exterior walls,there is horizontal and vertical  fractures", 4),
      ],
    ),
    QuizModel(
      '12- Shape of building,planning schema: ',
      [
        AnswerModel("Square or polygon", 0),
        AnswerModel("Rectangle", 1),
        AnswerModel("Star ", 2),
        AnswerModel("The Building has depth gaps", 3),
        AnswerModel("Adjacent blocks don't have same floor level", 4),
      ],
    ),
  ];
}
