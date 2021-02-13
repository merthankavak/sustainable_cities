import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:sustainable_cities/Components/custom_scaffold.dart';

final List<String> images = [
  'assets/images/sliderImage1.png',
  'assets/images/sliderImage2.png',
  'assets/images/sliderImage3.png',
  'assets/images/sliderImage4.png',
];

class EarthQuakeEconomy extends StatefulWidget {
  static const String routeName = '/earthquakeEconomy';
  @override
  _EarthQuakeEconomyState createState() => _EarthQuakeEconomyState();
}

class _EarthQuakeEconomyState extends State<EarthQuakeEconomy> {
  final List<Widget> imageSliders = images
      .map(
        (item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                  ],
                )),
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isBack: true,
      title: "EFFECTS OF EARTHQUAKE",
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.black,
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: imageSliders,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "After a disaster, communities are often unprepared for the chaos that emerges, even if they have engaged in pre-disaster planning. Planning for long-term recovery seems like a difficult task when there are pressing humanitarian, cleanup, and rebuilding needs to address.Still, a disaster-impacted community needs to develop a vision for how it will rebuild its economy. It takes time, leadership, and resources – all of which will be in short supply – to develop an economic recovery plan with buy-in from community stakeholders. Yet, a post-disaster strategic plan provides the opportunity to re-evaluate economic objectives in light of vulnerabilities to disaster, and establish strategies and action steps to make progress toward long-term recovery.The steps to the post-disaster economic recovery planning process are:",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'STEP 1: CONDUCT A POST-DISASTER ECONOMIC IMPACT STUDY',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\n The community should seek to perform an independent economic impact assessment, even though FEMA will perform its own damage assessments after a major disaster. This impact study should be conducted as quickly as possible following the disaster. The study provides intelligence for decision-makers on the ground and supports any request for Congress to appropriate funds for rebuilding/recovery (in the event of a presidentially declared disaster). \n',
                    ),
                    TextSpan(
                      text:
                          '\n The impact study assesses both physical damage (properties, inventory, etc.) and economic damage to industry and the local economy. Communities that have performed this type of analysis indicate many challenges in acquiring both pre-disaster and post-disaster data, particularly in an initially chaotic environment.\n',
                    ),
                    TextSpan(
                      text:
                          '\nTo the extent possible, the study should measure the following economic impacts (where data is available):\n',
                    ),
                    TextSpan(
                      text:
                          '\n◼ Tax revenue loss (sales, property, employment)\n◼ Job loss\n◼ Loss of wages\n◼ Business closures and interruption (loss of productivity)\n◼ Damage to infrastructure\n◼ Damage to property (commercial, industrial, residential)\n◼ Damage to natural resources (which have an impact on local industries)',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text:
                          '\n◼ There is no critical earthquake risk in your construction!!\n',
                    ),
                    TextSpan(
                      text:
                          '\nSTEP 2: A LEAD ECONOMIC DEVELOPMENT ORGANIZATION SHOULD INITIATE A POST-DISASTER ECONOMIC RECOVERY PLANNING PROCESS\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nOne of the community’s economic development organizations (EDOs) should take the lead in initiating the economic recovery planning process, with support and engagement from other business, civic, and community organizations. This process should begin within at least six months following the disaster. Some communities have started this process even sooner to take advantage of the sense of urgency and unity following a disaster as they strategize about their course of action.\n',
                    ),
                    TextSpan(
                      text: '\nSTEP 2A: HOLD A KICK-OFF MEETING\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nThe lead EDO should hold a kick-off meeting with leadership representation from key economic stakeholders and local government. The EDO may want to co-host the meeting with another organization, and consult with others regarding which economic recovery stakeholders should attend. A professional facilitator should be considered to help develop an agenda and facilitate a productive meeting.\n',
                    ),
                    TextSpan(
                      text:
                          '\nSTEP 2B: IDENTIFY THE ROLES AND RESPONSIBILITIES OF ALL ECONOMIC RECOVERY STAKEHOLDERS\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nIdentify roles and responsibilities among partner organizations for both short- and long-term recovery. Part of this process should include assessing the capacity and resources of each organization.\n',
                    ),
                    TextSpan(
                      text:
                          '\nSTEP 2C: ESTABLISH WORKING GROUPS TO GATHER RELEVANT DATA AND INFORMATION\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nEconomic recovery working groups should be established to cover major topics (e.g., business retention, small business assistance, downtown redevelopment, etc.). Each working group should have a chairperson and be responsible for compiling relevant data. The group can also begin identifying major issues and suggesting strategies and resources to address those issues.\n',
                    ),
                    TextSpan(
                      text: '\nSTEP 2D: PRODUCE A COMPLETE ECONOMIC ANALYSIS\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                        text:
                            "\nThis economic analysis includes a detailed look at key industries and anchors and specific quantitative and qualitative data on how they have been impacted by the disaster. This analysis will provide insight into the current state of the economy, including whether economic development targets should be re-evaluated; a better understanding of competitive positioning; and will lay the foundation for a long-term economic development strategy for the community.It may be beneficial to have a third party conduct this economic analysis, due to:limited local capacity issuesassurance of a speedy planning processthe need for a fresh perspective on the situationThe following steps will assist with the economic analysis:Review existing strategic plans and studies for relevancy, evaluate existing business development targets, and revisit economic issuesSolicit information and input from working groupsConduct additional focus groups around key topics to help identify specific challenges and opportunitiesHold an economic redevelopment charrette with various stakeholders (economic developers, planners, local government, businesses, citizens, etc.) to focus on a specific geographic areas, such as the downtown, an industrial park, or a neighborhood\n"),
                    TextSpan(
                      text:
                          '\nSTEP 3: FULLY ASSESS THE SITUATION ON THE GROUND\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nTake the time to really understand the post-disaster economic analysis before any actions are proposed or implemented. A deep understanding of the current situation will provide critical insight on how the community should move forward.\n',
                    ),
                    TextSpan(
                      text: '\nSTEP 4: CREATE A PLAN WITH ACTION STRATEGIES\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nTake the time to really understand the post-disaster economic analysis before any actions are proposed or implemented. A deep understanding of the current situation will provide critical insight on how the community should move forward.\n',
                    ),
                    TextSpan(
                      text:
                          '\nCreate action strategies and tactics to provide direction on economic recovery priorities. The plan should be updated as needed.\n1-)Include a phased approach to economic recovery where clear goals and objectives are set for the short-, medium- and long-term. Emphasis should be placed on long-term goals, which could be 10 years, 20 years or longer (depending on extent of damage).\n2-)Assign appropriate organizations to take ownership of and carry out each task.\n3-)Ensure these organizations have the resources to carry out each task, in terms of capacity, ability and financial means.\n4-)Ensure that business retention and expansion is addressed before any recruitment efforts take place. Existing businesses are the ones that are most likely to rebuild the economy.\n5-)Ensure that strategies and actions are specific, with measurable outcomes, to provide a basis for monitoring progress.\n',
                    ),
                    TextSpan(
                      text:
                          '\nSTEP 4A: COORDINATE THE ACTION PLAN WITH THE DEVELOPMENT OF AN EFFECTIVE COMMUNICATIONS STRATEGY\n',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '\nThe public should be aware of this planning effort and how time, resources and funds will be prioritized.\n',
                    ),
                  ],
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
