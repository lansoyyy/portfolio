import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/education.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<Education> educationList = [
  Education(
    description:
        "SCiVER IT Solutions\nSCiVER IT Solutions is a leading software company based in Ilocos Norte, Philippines, renowned for its unwavering commitment to technological innovation and cutting-edge solutions. With a passion for transforming businesses through digital advancements, SCiVER IT Solutions stands at the forefront of the industry, delivering exceptional software products and services.",
    linkName: "www.scivercorp.com",
    period: "March 2022 - PRESENT",
  ),
  Education(
    description:
        "Cyber Ensemble\nCyber Ensemble is a dynamic and pioneering software outsourcing company located in Cagayan De Oro, Philippines. With a strong focus on harnessing digital potential, the company has established itself as a leader in delivering innovative and cutting-edge software solutions to clients worldwide.",
    linkName: "www.cyberensemble.com",
    period: "October 2022 - PRESENT",
  ),
  Education(
    description:
        "YAHSHUA\nYahshua Company is a prominent outsourcing company based in the vibrant city of Cagayan De Oro, Philippines. With a strong commitment to delivering exceptional services, Yahshua Company has established itself as a trusted partner for businesses seeking reliable and cost-effective outsourcing solutions.",
    linkName: "www.yahshuapayroll.com",
    period: "JUNE 2023 - PRESENT",
  ),
  Education(
    description:
        "AlgoVision\nAlgo Vision is a dynamic and forward-thinking startup company based in Cagayan De Oro, Philippines, spearheading technological advancements and pushing the boundaries of innovation. Our mission is to bring cutting-edge solutions to industries and transform the way businesses operate through the power of algorithms and visionary thinking.",
    linkName: "",
    period: "2022 - PRESENT",
  ),
  Education(
    description:
        "Freelancing\nWith a strong commitment to understanding your unique business objectives, we collaborate closely with you to conceptualize, design, and develop tailor-made software solutions that align with your vision. We value open communication and maintain a transparent workflow throughout the development process, ensuring your feedback is incorporated at every stage.",
    linkName: "",
    period: "2021 - PRESENT",
  ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "EXPERIENCE",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 400.0),
                  child: Text(
                    "Building Digital Solutions with Mastery: Showcasing the Craftsmanship of a Software Developer",
                    style: TextStyle(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: educationList
                        .map(
                          (education) => Container(
                            width: constraints.maxWidth / 2.0 - 20.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education.period,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: kCaptionColor,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      education.linkName,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
