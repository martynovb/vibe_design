import 'about_course_details_model.dart';
import 'level_details_model.dart';
import 'package:vibe_design/presentation/shared/localization/locale_keys.g.dart';

enum LevelType {
  level1,
  level2,
  level3,
  level4,
}

extension LevelTypeExtension on LevelType {
  LevelDetailsModel getLevelDetailsByType() {
    switch (this) {
      case LevelType.level1:
        return LevelDetailsModel(
          fullTitle: LocaleKeys.course_details_level1_fullTitle,
          title1: LocaleKeys.course_details_level1_title1,
          title2: LocaleKeys.course_details_level1_title2,
          subTitle: LocaleKeys.course_details_level1_subTitle,
          card1Text: LocaleKeys.course_details_level1_card1Text,
          card2Text: LocaleKeys.course_details_level1_card2Text,
          card3Text: LocaleKeys.course_details_level1_card3Text,
          price: LocaleKeys.course_details_level1_price,
          pricePostfix: LocaleKeys.course_details_level1_pricePostfix,
          startDate: LocaleKeys.course_details_level1_startDate,
          courseFormat: LocaleKeys.course_details_level1_courseFormat,
          duration: LocaleKeys.course_details_level1_duration,
          aboutCourseList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_aboutCourseItem1Title,
              details:
                  LocaleKeys.course_details_level1_aboutCourseItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_aboutCourseItem2Title,
              details:
                  LocaleKeys.course_details_level1_aboutCourseItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_aboutCourseItem3Title,
              details:
                  LocaleKeys.course_details_level1_aboutCourseItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_aboutCourseItem4Title,
              details:
                  LocaleKeys.course_details_level1_aboutCourseItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_aboutCourseItem5Title,
              details:
                  LocaleKeys.course_details_level1_aboutCourseItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_aboutCourseItem6Title,
              details:
                  LocaleKeys.course_details_level1_aboutCourseItem6Description,
            ),
          ],
          modulesList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_module1Title,
              details: LocaleKeys.course_details_level1_module1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_module2Title,
              details: LocaleKeys.course_details_level1_module2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_module3Title,
              details: LocaleKeys.course_details_level1_module3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_module4Title,
              details: LocaleKeys.course_details_level1_module4Description,
            ),
          ],
          benefitsList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem1Title,
              details: LocaleKeys.course_details_level1_benefitItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem2Title,
              details: LocaleKeys.course_details_level1_benefitItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem3Title,
              details: LocaleKeys.course_details_level1_benefitItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem4Title,
              details: LocaleKeys.course_details_level1_benefitItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem5Title,
              details: LocaleKeys.course_details_level1_benefitItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem6Title,
              details: LocaleKeys.course_details_level1_benefitItem6Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem7Title,
              details: LocaleKeys.course_details_level1_benefitItem7Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem8Title,
              details: LocaleKeys.course_details_level1_benefitItem8Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level1_benefitItem9Title,
              details: LocaleKeys.course_details_level1_benefitItem9Description,
            ),
          ],
        );
      case LevelType.level2:
        return LevelDetailsModel(
          fullTitle: LocaleKeys.course_details_level2_fullTitle,
          title1: LocaleKeys.course_details_level2_title1,
          title2: LocaleKeys.course_details_level2_title2,
          subTitle: LocaleKeys.course_details_level2_subTitle,
          card1Text: LocaleKeys.course_details_level2_card1Text,
          card2Text: LocaleKeys.course_details_level2_card2Text,
          card3Text: LocaleKeys.course_details_level2_card3Text,
          price: LocaleKeys.course_details_level2_price,
          pricePostfix: LocaleKeys.course_details_level2_pricePostfix,
          startDate: LocaleKeys.course_details_level2_startDate,
          courseFormat: LocaleKeys.course_details_level2_courseFormat,
          duration: LocaleKeys.course_details_level2_duration,
          aboutCourseList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_aboutCourseItem1Title,
              details:
                  LocaleKeys.course_details_level2_aboutCourseItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_aboutCourseItem2Title,
              details:
                  LocaleKeys.course_details_level2_aboutCourseItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_aboutCourseItem3Title,
              details:
                  LocaleKeys.course_details_level2_aboutCourseItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_aboutCourseItem4Title,
              details:
                  LocaleKeys.course_details_level2_aboutCourseItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_aboutCourseItem5Title,
              details:
                  LocaleKeys.course_details_level2_aboutCourseItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_aboutCourseItem6Title,
              details:
                  LocaleKeys.course_details_level2_aboutCourseItem6Description,
            ),
          ],
          modulesList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_module1Title,
              details: LocaleKeys.course_details_level2_module1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_module2Title,
              details: LocaleKeys.course_details_level2_module2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_module3Title,
              details: LocaleKeys.course_details_level2_module3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_module4Title,
              details: LocaleKeys.course_details_level2_module4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_module5Title,
              details: LocaleKeys.course_details_level2_module5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_module6Title,
              details: LocaleKeys.course_details_level2_module6Description,
            ),
          ],
          benefitsList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem1Title,
              details: LocaleKeys.course_details_level2_benefitItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem2Title,
              details: LocaleKeys.course_details_level2_benefitItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem3Title,
              details: LocaleKeys.course_details_level2_benefitItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem4Title,
              details: LocaleKeys.course_details_level2_benefitItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem5Title,
              details: LocaleKeys.course_details_level2_benefitItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem6Title,
              details: LocaleKeys.course_details_level2_benefitItem6Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem7Title,
              details: LocaleKeys.course_details_level2_benefitItem7Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem8Title,
              details: LocaleKeys.course_details_level2_benefitItem8Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem9Title,
              details: LocaleKeys.course_details_level2_benefitItem9Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem10Title,
              details:
                  LocaleKeys.course_details_level2_benefitItem10Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level2_benefitItem11Title,
              details:
                  LocaleKeys.course_details_level2_benefitItem11Description,
            ),
          ],
        );
      case LevelType.level3:
        return LevelDetailsModel(
          fullTitle: LocaleKeys.course_details_level3_fullTitle,
          title1: LocaleKeys.course_details_level3_title1,
          title2: LocaleKeys.course_details_level3_title2,
          subTitle: LocaleKeys.course_details_level3_subTitle,
          card1Text: LocaleKeys.course_details_level3_card1Text,
          card2Text: LocaleKeys.course_details_level3_card2Text,
          card3Text: LocaleKeys.course_details_level3_card3Text,
          price: LocaleKeys.course_details_level3_price,
          pricePostfix: LocaleKeys.course_details_level3_pricePostfix,
          startDate: LocaleKeys.course_details_level3_startDate,
          courseFormat: LocaleKeys.course_details_level3_courseFormat,
          duration: LocaleKeys.course_details_level3_duration,
          aboutCourseList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_aboutCourseItem1Title,
              details:
                  LocaleKeys.course_details_level3_aboutCourseItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_aboutCourseItem2Title,
              details:
                  LocaleKeys.course_details_level3_aboutCourseItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_aboutCourseItem3Title,
              details:
                  LocaleKeys.course_details_level3_aboutCourseItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_aboutCourseItem4Title,
              details:
                  LocaleKeys.course_details_level3_aboutCourseItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_aboutCourseItem5Title,
              details:
                  LocaleKeys.course_details_level3_aboutCourseItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_aboutCourseItem6Title,
              details:
                  LocaleKeys.course_details_level3_aboutCourseItem6Description,
            ),
          ],
          modulesList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_module1Title,
              details: LocaleKeys.course_details_level3_module1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_module2Title,
              details: LocaleKeys.course_details_level3_module2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_module3Title,
              details: LocaleKeys.course_details_level3_module3Description,
            ),
          ],
          benefitsList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem1Title,
              details: LocaleKeys.course_details_level3_benefitItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem2Title,
              details: LocaleKeys.course_details_level3_benefitItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem3Title,
              details: LocaleKeys.course_details_level3_benefitItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem4Title,
              details: LocaleKeys.course_details_level3_benefitItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem5Title,
              details: LocaleKeys.course_details_level3_benefitItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem6Title,
              details: LocaleKeys.course_details_level3_benefitItem6Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem7Title,
              details: LocaleKeys.course_details_level3_benefitItem7Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem8Title,
              details: LocaleKeys.course_details_level3_benefitItem8Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem9Title,
              details: LocaleKeys.course_details_level3_benefitItem9Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem10Title,
              details:
                  LocaleKeys.course_details_level3_benefitItem10Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level3_benefitItem11Title,
              details:
                  LocaleKeys.course_details_level3_benefitItem11Description,
            ),
          ],
        );
      case LevelType.level4:
        return LevelDetailsModel(
          fullTitle: LocaleKeys.course_details_level4_fullTitle,
          title1: LocaleKeys.course_details_level4_title1,
          title2: LocaleKeys.course_details_level4_title2,
          subTitle: LocaleKeys.course_details_level4_subTitle,
          card1Text: LocaleKeys.course_details_level4_card1Text,
          card2Text: LocaleKeys.course_details_level4_card2Text,
          card3Text: LocaleKeys.course_details_level4_card3Text,
          price: LocaleKeys.course_details_level4_price,
          pricePostfix: LocaleKeys.course_details_level4_pricePostfix,
          startDate: LocaleKeys.course_details_level4_startDate,
          courseFormat: LocaleKeys.course_details_level4_courseFormat,
          duration: LocaleKeys.course_details_level4_duration,
          aboutCourseList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_aboutCourseItem1Title,
              details:
                  LocaleKeys.course_details_level4_aboutCourseItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_aboutCourseItem2Title,
              details:
                  LocaleKeys.course_details_level4_aboutCourseItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_aboutCourseItem3Title,
              details:
                  LocaleKeys.course_details_level4_aboutCourseItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_aboutCourseItem4Title,
              details:
                  LocaleKeys.course_details_level4_aboutCourseItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_aboutCourseItem5Title,
              details:
                  LocaleKeys.course_details_level4_aboutCourseItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_aboutCourseItem6Title,
              details:
                  LocaleKeys.course_details_level4_aboutCourseItem6Description,
            ),
          ],
          modulesList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_module1Title,
              details: LocaleKeys.course_details_level4_module1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_module2Title,
              details: LocaleKeys.course_details_level4_module2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_module3Title,
              details: LocaleKeys.course_details_level4_module3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_module4Title,
              details: LocaleKeys.course_details_level4_module4Description,
            ),
          ],
          benefitsList: [
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem1Title,
              details: LocaleKeys.course_details_level4_benefitItem1Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem2Title,
              details: LocaleKeys.course_details_level4_benefitItem2Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem3Title,
              details: LocaleKeys.course_details_level4_benefitItem3Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem4Title,
              details: LocaleKeys.course_details_level4_benefitItem4Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem5Title,
              details: LocaleKeys.course_details_level4_benefitItem5Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem6Title,
              details: LocaleKeys.course_details_level4_benefitItem6Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem7Title,
              details: LocaleKeys.course_details_level4_benefitItem7Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem8Title,
              details: LocaleKeys.course_details_level4_benefitItem8Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem9Title,
              details: LocaleKeys.course_details_level4_benefitItem9Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem10Title,
              details:
                  LocaleKeys.course_details_level4_benefitItem10Description,
            ),
            AboutCourseDetailsModel(
              title: LocaleKeys.course_details_level4_benefitItem11Title,
              details:
                  LocaleKeys.course_details_level4_benefitItem11Description,
            ),
          ],
        );
    }
  }
}
