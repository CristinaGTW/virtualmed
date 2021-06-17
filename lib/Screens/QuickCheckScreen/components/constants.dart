import 'query_body.dart';

class Constants {
  //TODO: Put the correct nextQuestion index
  static const query = {
    "": [],
    "Neck": [
      //Q0
      {
        "question": "Do you have lumps or swelling on both sides of your neck?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "VIRAL SORE THROAT", "score": 3},
          {"diagnosis": "STREP", "score": 3},
          {"diagnosis": "MONONUCLEOSIS", "score": 3}
        ]
      },
      //Q1
      {
        "question": "Do you have a fever, sore throat, cold, or flu symptoms?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VIRAL SORE THROAT", "score": 3},
          {"diagnosis": "STREP", "score": 3},
          {"diagnosis": "MONONUCLEOSIS", "score": 3}
        ]
      },
      //Q2
      {
        "question":
            "Are the lumps getting larger, or have they been on your neck for longer than two weeks?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTED LYMPH NODES", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Do you have swelling in the back of your neck on one or both sides?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": []
      },
      //Q4
      {
        "question": "Do you have a skin infection or rash on your scalp?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTED LYMPH NODES", "score": 10}
        ]
      },
      //Q5
      {
        "question": "Do you have a rash on your face or a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VIRAL ILLNESS", "score": 9},
          {"diagnosis": "GERMAN MEASLES (RUBELLA)", "score": 1}
        ]
      },
      //Q6
      {
        "question":
            "Do you have swelling behind and over your jaw on one or both sides?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "MUMPS", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do you have swelling underneath the middle of your chin or directly in the front and middle of your neck?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "THYROGLOSSAL DUCT CYST", "score": 5},
          {"diagnosis": "ABSCESS", "score": 5}
        ]
      },
      //Q8
      {
        "question":
            "Is there a soft swelling on the front of your neck above and between the collarbones?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "THYROIDITIS", "score": 10}
        ]
      }
    ],

    "Hands": [
      //Q0
      {
        "question": "Did you hit, twist, or fall on your hand or wrist?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10}
        ]
      },
      //Q1
      {
        "question": "Is the affected area deformed or swollen?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10}
        ],
      },
      //Q2
      {
        "question": "Does the pain get worse when you move your hand or wrist?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "SPRAINED", "score": 10}
        ],
      },
      //Q3
      {
        "question":
            "Does the pain get worse with repetitive movement \n (e.g., while working or playing a sport)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "SPRAINED", "score": 10}
        ],
      },
      //Q4
      {
        "question":
            "Is it painful to grip a doorknob, and does the pain start \n on the outside of your elbow and move down your arm to your wrist?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "LATERAL EPICONDYLITIS", "score": 10}
        ],
      },
      //Q5
      {
        "question":
            "Do you have numbness or pain in your fingers, hand, wrist, \n especially when you flex your wrist?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "CARPAL TUNNEL SYNDROME", "score": 10}
        ],
      },
      //Q6
      {
        "question":
            "Do you have a firm lump or swelling near your wrist or finger joints?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "GANGLION CYST", "score": 10}
        ],
      },
      //Q7
      {
        "question":
            "Do you have redness, swelling, or pain in the skin around \n a cut or wound, or is there a red streak anywhere on your hand?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 8}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTION", "score": 10}
        ],
      },
      //Q8
      {
        "question":
            "Are one or more joints swollen and tender? Do you have a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATOID ARTHRITIS", "score": 5},
          {"diagnosis": "GOUT", "score": 5}
        ],
      },
      //Q9
      {
        "question":
            "Does your thumb hurt with gripping, typing, or writing with a pencil or pen?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CARPAL TUNNEL SYNDROME", "score": 10}
        ],
      }
    ],

    "Arms": [
      //Q0
      {
        "question": "Did you hit, twist, or fall on your arm?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10}
        ]
      },
      //Q1
      {
        "question": "Is the affected area deformed or swollen?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10}
        ],
      },
      //Q2
      {
        "question": "Does the pain get worse when you move your arm?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "SPRAINED", "score": 10}
        ],
      },
      //Q3
      {
        "question":
            "Does the pain get worse with repetitive movement \n (e.g., while working or playing a sport)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "SPRAINED", "score": 10}
        ],
      },
      //Q4
      {
        "question":
            "Do you have numbness or pain in your fingers, hand, wrist, \n or arm, especially when you flex your wrist \n (i.e., bend your palm toward your forearm)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "CARPAL TUNNEL SYNDROME", "score": 10}
        ],
      },
      //Q5
      {
        "question":
            "Do you have redness, swelling, or pain in the skin around \n a cut or wound, or is there a red streak anywhere on your arm?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTION", "score": 10}
        ],
      },
      //Q6
      {
        "question":
            "Are one or more joints swollen and tender? Do you have a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATOID ARTHRITIS", "score": 5},
          {"diagnosis": "GOUT", "score": 5}
        ],
      }
    ],

    // for Women
    "Pelvis": [
      //Q0
      {
        "question": "Are you a woman?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "", "score": 0}
        ]
      },

      //Q1
      {
        "question":
            "Do you have a vaginal discharge that is normal in color, consistency, and smell, but has the amount increased?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "ORAL CONTRACEPTIVES / PREGNANCY", "score": 5}
        ]
      },
      //Q2
      {
        "question":
            "Do you have a discharge that is white and curd-like (cottage-cheese like), or are you experiencing vaginal or labial (lips of the vagina) redness, itching, and/or irritation?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "YEAST INFECTION", "score": 5},
          {"diagnosis": "CANDIDIASIS", "score": 5}
        ]
      },
      //Q3
      {
        "question":
            "Do you have a greenish, yellow discharge with an unpleasant fishy odor?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "PELVIC INFLAMMATORY DISEASE (PID)", "score": 5},
          {"diagnosis": "SEXUALLY TRANSMITTED INFECTION", "score": 5}
        ]
      },
      //Q4
      {
        "question":
            "Are you experiencing abdominal pain or other pain during sex?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "PELVIC INFLAMMATORY DISEASE (PID)", "score": 5},
          {"diagnosis": "SEXUALLY TRANSMITTED INFECTION", "score": 5}
        ]
      },
      //Q5
      {
        "question":
            "Do you have a tender swelling of the vaginal opening or swelling of one labia (vaginal lip)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTION IN A MUCOUS GLAND", "score": 5},
          {"diagnosis": "ABSCESS", "score": 5},
          {"diagnosis": "INFECTION IN THE LABIA (VAGINAL LIP)", "score": 5}
        ]
      },
      //Q6
      {
        "question":
            "Do you have a sore (ulcer) or raw area on the outside or inside of the vagina?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "HERPES", "score": 5},
          {"diagnosis": " SEXUALLY TRANSMITTED INFECTIONS", "score": 5}
        ]
      },
      //Q7
      {
        "question": "Do you have pain with intercourse?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 8}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTION", "score": 5},
          {"diagnosis": "HORMONE DEFICIENCY", "score": 5}
        ]
      },
      //Q8
      {
        "question":
            "Does your vagina seem dry, or are you experiencing vaginal itching and irritation?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": 9}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTION", "score": 5},
          {"diagnosis": "HORMONE DEFICIENCY", "score": 5}
        ]
      },
      //Q9
      {
        "question": "Are you anxious about having sex?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "VAGINISMUS", "score": 5}
        ]
      },
      //Q10
      {
        "question":
            "Do you have pain or burning with urination? Do you feel like you suddenly have to urinate and can’t make it to the toilet in time? Do you feel that you are having trouble starting your stream of urine? Do you feel that you are not completely emptying your bladder when you urinate?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": 11}
        ],
        "onYesResponse": [
          {"diagnosis": "URINARY TRACT INFECTION (UTI)", "score": 5}
        ]
      },
      //Q11
      {
        "question":
            "Do you leak urine when you cough, laugh, or lift a heavy object?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "STRESS INCONTINENCE", "score": 5}
        ]
      },

      // "Pelvis - Men":
      // Q12
      {
        "question": "Do you have any swelling or tenderness in your scrotum?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": 13}
        ],
        "onYesResponse": [
          {"diagnosis": "SEXUALLY TRANSMITTED INFECTION", "score": 10}
        ],
      },
      // Q13
      {
        "question":
            "Do you have a yellowish or greenish discharge from the tip of your penis? Does anything other than urine or semen (e.g., blood, white discharge that is clumpy while you are urinating, etc.) come out of the tip of your penis?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": 14}
        ],
        "onYesResponse": [
          {"diagnosis": "SEXUALLY TRANSMITTED INFECTION", "score": 10}
        ],
      },
      // Q14
      {
        "question": "Do you have a burning sensation or pain with urination?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 15},
          {"answer": "Yes", "nextQuestion": 15}
        ],
        "onYesResponse": [
          {"diagnosis": "BLADDER INFECTION", "score": 10}
        ]
      },
      // Q15
      {
        "question":
            "Do you have a painful, itchy rash or small red bumps, blisters, or sores on your penis?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 16},
          {"answer": "Yes", "nextQuestion": 17}
        ],
        "onYesResponse": [
          {"diagnosis": "YEAST INFECTION", "score": 3},
          {"diagnosis": "HERPES", "score": 3},
          {"diagnosis": "CANCER", "score": 4}
        ],
      },
      // Q16
      {
        "question":
            "Do you have a painless sore, ulcer, or small white or flesh-colored flat-topped bumps on the shaft or head of your penis?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 17},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "GENITAL WARTS", "score": 3},
          {"diagnosis": "SYPHILIS", "score": 3},
          {"diagnosis": "CANCER", "score": 4}
        ],
      },
      // Q17
      {
        "question": "Is the entire tip of your penis tender or swollen?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 18},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "BALANITIS", "score": 10}
        ],
      },
      // Q18
      {
        "question":
            "Do you have blood in your urine or semen, or pain with ejaculation? Do you have deep-down pelvic pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 19},
          {"answer": "Yes", "nextQuestion": 19}
        ],
        "onYesResponse": [
          {"diagnosis": "PROSTATITIS", "score": 10}
        ],
      },
      // Q19
      {
        "question": "Do you have pain with sexual intercourse?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 20},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ALLERGY", "score": 3},
          {"diagnosis": "PROSTATITIS", "score": 3},
          {"diagnosis": "INFECTION", "score": 3}
        ],
      },
      // Q20
      {
        "question":
            "Is your scrotum very tender although no injury has occurred to the testicle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 21},
          {"answer": "Yes", "nextQuestion": 21}
        ],
        "onYesResponse": [
          {"diagnosis": "EPIDIDYMITIS", "score": 5},
          {"diagnosis": "TESTICULAR TORSION", "score": 5}
        ],
      },
      // Q21
      {
        "question": "Do you have mild tenderness around one testicle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 22},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "EPIDIDYMITIS", "score": 10}
        ],
      },
      // Q22
      {
        "question":
            "Is there a hard, painless knot on one testicle that feels like a frozen pea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 23},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SPERMATOCELE", "score": 5},
          {"diagnosis": "TESTICULAR CANCER", "score": 5}
        ],
      },
      // Q23
      {
        "question":
            "Is there a soft, painless swelling of the testicle or around your testicle in your scrotum on one or both sides?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 24},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VARICOCELE", "score": 5},
          {"diagnosis": "HYDROCELE", "score": 5}
        ],
      },
      // Q24
      {
        "question":
            "Is there a soft swelling above your testicle that gets bigger or becomes painful with activity, lifting, or coughing?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 25},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "INGUINAL HERNIA", "score": 10}
        ],
      },
      // Q25
      {
        "question":
            "Do you have an erection that has lasted for more than 4 hours?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 26},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PRIAPISM", "score": 10}
        ],
      },
      // Q26
      {
        "question": "Do you have trouble achieving or maintaining an erection?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ERECTILE DYSFUNCTION", "score": 10}
        ],
      }
    ],

    // Abdominal Pain - Long Term
    "Torso": [
      //Q0
      {
        "question": "Does your pain get worse after you eat a big meal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "HIATAL HERNIA", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Do you feel pressure in your upper abdomen that gets worse when you bend over or lie down at night?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "HIATAL HERNIA", "score": 10}
        ]
      },
      //Q2
      {
        "question":
            "Is the pain relieved by antacids? Is your pain improved by eating?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "GASTRITIS", "score": 5},
          {"diagnosis": "ULCER", "score": 5},
          {"diagnosis": "HEARTBURN", "score": 5}
        ]
      },
      //Q3
      {
        "question":
            "Does the pain start in your upper middle or upper right abdomen, and is it brought on by greasy or fatty foods?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "GALLSTONES", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Does your pain get worse when you’re under stress or do you alternate between loose and hard bowel movements?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "IRRITABLE BOWEL SYNDROME", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you have soft or diarrhea-like bowel movements many times throughout the day AND mucus or blood in your stool?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CROHN’S DISEASE", "score": 5},
          {"diagnosis": "ULCERATIVE COLITIS", "score": 5}
        ]
      },
      //Q6
      {
        "question":
            "Do you have recurrent bouts of pain in the lower left side of your abdomen along with fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "DIVERTICULITIS", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do you have bright red blood in or on your bowel movements?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 9}
        ],
        "onYesResponse": [
          {"diagnosis": "HEMORRHOID", "score": 2},
          {"diagnosis": "POLYP", "score": 2},
          {"diagnosis": "CANCER", "score": 4}
        ]
      },
      //Q8
      {
        "question":
            "Has it been a few days or longer since you last had a bowel movement and do you have to strain when you have a bowel movement? Do you have bloating and/or abdomen distension?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CONSTIPATION", "score": 10}
        ]
      },
      //Q9
      {
        "question":
            "Has your appetite decreased? Have you lost 10 to 15 pounds over the past few months without trying?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CANCER", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Do your skin or eyes have a yellow color, or is your urine dark, or are your stools turning white?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HEPATITIS", "score": 10}
        ]
      },
      //Q11
      {
        "question":
            "Have you had fever, sore throat, or extreme tiredness? Do you have pain in your upper abdomen, mostly on the left upper quadrant?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "MONONUCLEOSIS", "score": 10}
        ]
      },
      //Q12
      {
        "question":
            "Do you have abdominal bloating and discomfort made worse by milk or wheat products?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 13},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "MALABSORPTION", "score": 3},
          {"diagnosis": "LACTOSE INTOLERANCE", "score": 3},
          {"diagnosis": "WHEAT/GLUTEN INTOLERANCE", "score": 3}
        ]
      },
      //Q13
      {
        "question":
            "Are your bowel movements yellow and/or greasy, and do they float in the toilet?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PANCREATIC INSUFFICIENCY", "score": 10}
        ]
      },
      //Q14
      {
        "question":
            "Do you have excess gas that smells foul and you have occasional loose bowel movements?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "GIARDIASIS", "score": 7},
          {"diagnosis": "BOWEL INFECTION", "score": 3}
        ]
      }
    ],

    "Acute Chest Pain": [
      //Q0
      {
        "question": "Do you have severe chest pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "HYPERVENTILATION", "score": 10}
        ],
      },
      //Q1
      {
        "question":
            "Do you have symptoms of a cold or the flu, such as fever, aches, chills, runny nose, and/or cough?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PNEUMONIA", "score": 10}
        ]
      },
      //Q2
      {
        "question":
            "Do you have a cough that produces greenish, yellowish, or tan mucus, a fever, and shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PNEUMONIA", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Do you have a cough that produces a small amount of clear mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "VIRAL BRONCHITIS", "score": 5},
          {"diagnosis": "PLEURISY", "score": 5}
        ]
      },
      //Q4
      {
        "question": "Does your chest hurt when you take a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VIRAL BRONCHITIS", "score": 5},
          {"diagnosis": "PLEURISY", "score": 5}
        ]
      },
      //Q5
      {
        "question": "Are you uncomfortable from your shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "HEART ATTACK", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Does the pain or discomfort occur only when you swallow or after you eat?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "GASTRITIS", "score": 5},
          {"diagnosis": "ESOPHAGITIS", "score": 5}
        ]
      },
      //Q7
      {
        "question":
            "Do you have a severe, sharp pain on one side of your chest when you take a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PNEUMOTHORAX", "score": 10}
        ]
      },
      //Q8
      {
        "question":
            "Do you experience shortness of breath when you are physically active and/or when you’re lying down?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CONGESTIVE HEART FAILURE", "score": 5},
          {"diagnosis": "ASTHMA", "score": 5}
        ]
      },
      //Q9
      {
        "question":
            "Do you have pressure in your chest, shortness of breath and numbness around your lips or in your hands or feet?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HYPERVENTILATION", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Do you have a crushing pain or uncomfortable pressure in the middle of your chest that lasts more than a few minutes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HEART ATTACK", "score": 20}
        ]
      },
      //Q11
      {
        "question":
            "Do you have a squeezing pain in the chest or left upper arm; sweating and nausea; or severe shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": 12}
        ],
        "onYesResponse": [
          {"diagnosis": "HEART ATTACK", "score": 20}
        ]
      },
      //Q12
      {
        "question": "Do you have sweating and nausea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 13},
          {"answer": "Yes", "nextQuestion": 13}
        ],
        "onYesResponse": [
          {"diagnosis": "HEART ATTACK", "score": 20}
        ]
      },
      //Q13
      {
        "question": "Do you have severe shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HEART ATTACK", "score": 20}
        ]
      },
      //Q14
      {
        "question":
            "Do you have a painful, blistering rash on your chest or back?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 15},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SHINGLES", "score": 10}
        ]
      },
      //Q15
      {
        "question":
            "Do you have back pain that radiates around to the front of your chest?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "COSTOCHONDRITIS", "score": 5},
          {"diagnosis": "FRACTURE", "score": 5}
        ]
      }
    ],

    //TODO: Move "Chest Pain, Chronic" and "Chest Pain in Infants and Children" to "Chest"
    "Chronic Chest Pain": [
      //Q0
      {
        "question": "Do you have shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "POSTHERPETIC NEURALGIA", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Do you have episodes of wheezing and a cough that won’t go away?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ASTHMA", "score": 10}
        ]
      },
      //Q2
      {
        "question": "Does your chest ache along the edges of your breastbone?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "COSTOCHONDRITIS", "score": 5}
        ]
      },
      //Q3
      {
        "question":
            "Does your pain get worse when you cough or take a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "COSTOCHONDRITIS", "score": 5}
        ]
      },
      //Q4
      {
        "question":
            "Do physical activities, emotional stress, or extreme temperatures cause a feeling of pressure under the breastbone?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ANGINA", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you have fullness and pain under your breastbone or in the upper right side of your abdomen after eating a greasy or fatty meal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "GALLBLADDER", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Do you have a burning sensation in your chest that feels worse when you eat or drink?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "ULCER", "score": 15},
          {"diagnosis": "IRRITATION OF THE ESOPHAGUS", "score": 15},
          {"diagnosis": "ESOPHAGUS SPASM", "score": 15},
          {"diagnosis": "HIATAL HERNIA", "score": 15}
        ]
      },
      //Q7
      {
        "question":
            "Do you have a burning sensation in your chest that feels better when you eat or drink, but gets worse a few hours later",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ULCER", "score": 15},
          {"diagnosis": "IRRITATION OF THE ESOPHAGUS", "score": 15},
          {"diagnosis": "ESOPHAGUS SPASM", "score": 15},
          {"diagnosis": "HIATAL HERNIA", "score": 15}
        ]
      },
      //Q8
      {
        "question":
            "Do you have stinging or burning pain at the same location where you had a recent case of SHINGLES?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SHINGLES", "score": 10}
        ]
      },
      //Q9
      {
        "question":
            "Do you have a tight feeling in your chest and on ongoing cough that produces a lot of mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "CHRONIC BRONCHITIS", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Does this usually occur for 2-3 months around the same time each year over the past 1-2 (or more) years?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CHRONIC BRONCHITIS", "score": 10}
        ]
      },
      //Q11
      {
        "question":
            "Do you have an ongoing, mild cough, has your shortness of breath been increasing slowly for years, and have you been a smoker or been exposed to dust and fumes where you work?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "EMPHYSEMA", "score": 10}
        ]
      },
      //Q12
      {
        "question":
            "Do you have a fever, chills, or night sweats, or are you coughing up bloody mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "", "score": 10}
        ]
      }
    ],
    "Chest Pain in Infants/Children": [
      //Q0
      {
        "question":
            "Does your child have a fever, a cough that produces mucus, and shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "BRONCHITIS", "score": 15},
          {"diagnosis": "PNEUMONIA", "score": 15}
        ]
      },
      //Q1
      {
        "question":
            "Does your child have a tight cough, wheezing, and shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "BRONCHIOLITIS", "score": 15},
          {"diagnosis": "ASTHMA OF THE ESOPHAGUS", "score": 15}
        ]
      },
      //Q2
      {
        "question":
            "Does your child have a dry cough and a sharp pain in the chest when he or she takes a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PLEURISY", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Does your child have sudden, sharp pain in one side of the chest with sudden shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PNEUMOTHORAX", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Does your child have a high fever, a very sore throat, and trouble breathing and/or swallowing? \n They may also be sitting forward resting on one arm (“tripoding.”)",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "EPIGLOTTITIS", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Does your child have pain and tenderness in the front of the chest, along the border of the breastbone and ribs, \n and does it get worse when your child coughs or takes a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "COSTOCHONDRITIS", "score": 10}
        ]
      }
    ],
    "Thighs": [
      //Q0
      {
        "question":
            "Do you have pain in your leg after a fall or injury, is there a deformity of your leg, or are you unable to stand or put pressure on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Do you have a tender red area or a red streak anywhere on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "CELLULITIS", "score": 10}
        ]
      },
      //Q2
      {
        "question": "Do you have swelling in both of your feet?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "EDEMA", "score": 10}
        ]
      },
      //Q3
      {
        "question": "Do you have cramps?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "DEHYDRATATION", "score": 10}
        ]
      },
      //Q4
      {
        "question": "Do you have a calf pain during activity?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ATHEROSCLERORIS", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you feel pain in the front or back of your thigh, usually near your knee or find difficulty walking or climbing stairs due to pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TENDONITIS", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Do you feel pain in both thighs or a numb and heavy feelings in your thighs?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SPINAL STENOSIS", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do you feel thigh pain, maybe accompanied by warmth, swelling, and redness in your thigh?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "BLOOD CLOT", "score": 10}
        ]
      }
    ],
    "Calves": [
      //Q0
      {
        "question":
            "Do you have pain in your leg after a fall or injury, is there a deformity of your leg, /n or are you unable to stand or put pressure on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 20}
        ],
      },
      //Q1
      {
        "question":
            "Do you have pain or mild swelling in the front or inner part of \n your lower leg that may have developed soon after starting \n or increasing physical activity, such as running, jumping or marching?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "SHIN SPLINTS", "score": 10},
        ]
      },
      //Q2
      {
        "question":
            "Do you have a tender red area or a red streak anywhere on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CELLULITIS", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Do your calves ache after walking, and is the pain relieved with rest?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PERIPHERAL ARTERIAL DISEASE (PAD)", "score": 10}
        ]
      },
      //Q4
      {
        "question": "Do you have swelling in both of your feet or lower legs?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "EDEMA", "score": 10}
        ]
      },
      //Q5
      {
        "question": "Is there bruising or swelling of your calf?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ACHILLES TENDON", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Do you have pain, swelling, redness, or warmth in your calf? \n Is one calf bigger than the other?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "DEEP VENOUS THROMBOSIS", "score": 10}
        ]
      },
    ],

    "Knees": [
      //Q0
      {
        "question":
            "Did your knee pain or swelling begin after a fall, twisting injury, \n or after your knee was hit by an object or person?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10}
        ]
      },
      //Q1
      {
        "question": "Is your knee deformed?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10}
        ]
      },
      //Q2
      {
        "question":
            "Is your kneecap swollen, tender, and warm, and do you have pain \n with activity?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURE", "score": 10},
          {"diagnosis": "PREPATELLAR BURSITIS", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Is your knee tender and swollen, and does the pain get worse after \n sitting for a long time or after using the stairs?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TORN CARTILAGE", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Do you have a sharp pain behind your knee and is it painful to \n extend (stretch out straight) your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TORN CARTILAGE", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you still have a grinding feeling in your joint or does it ever \n lock (i.e., you can’t flex or extend the joint or it is stuck in one of those positions), \n  even after your knee pain is better?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TORN CARTILAGE", "score": 10}
        ]
      },
      //Q6
      {
        "question": "Is your knee swollen and/or red?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATOID ARTHRITIS", "score": 5},
          {"diagnosis": "RHEUMATIC FEVER", "score": 5},
          {"diagnosis": "SEPTICE JOINT INFECTION", "score": 5}
        ]
      },
      //Q7
      {
        "question": "Do you have a fever along with swollen and/or red joints?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATOID ARTHRITIS", "score": 5},
          {"diagnosis": "RHEUMATIC FEVER", "score": 5},
          {"diagnosis": "SEPTICE JOINT INFECTION", "score": 5}
        ]
      },
      //Q8
      {
        "question":
            "Has your knee become tender over many months or years and does the \n pain get worse when the weather changes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "OSTEOARTHRITIS", "score": 10}
        ]
      },
      //Q9
      {
        "question": "Is the back of your knee swollen or tender?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ARTHRITIS", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Are you between 12 and 18 years, and do you have a pain on the \n front of your knee below your kneecap that gets \n worse with activities like running or jumping?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": " OSGOOD-SCHLATTER DISEASE", "score": 10}
        ]
      }
    ],
    "Feet": [
      //Q0
      {
        "question":
            "Did you begin to have pain and/or swelling after the ankle was hit \n or after a fall or a twisting injury?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "SPRAIN", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Is the ankle significantly swollen, and is the pain so intense that \n you can’t put weight on that foot?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "SPRAIN", "score": 10}
        ]
      },
      //Q2
      {
        "question":
            "Is the ankle swollen and bruised, and can you still put weight on \n that foot?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SPRAIN", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Do you have swelling, stiffness (especially in the morning), \n and/or pain that comes and goes in both ankles?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATOID ARTHRITIS", "score": 10},
          {"diagnosis": "OSTEOARTHRITIS", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Do you have a fever, and is one or more of your joints painful, \n swollen, and red?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATIC FEVER", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Did the pain start suddenly, and is it painful when clothing or \n bedding rubs against your ankle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "GOUT", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Do you usually feel pain before or during a change in the weather, \n and/or are you experiencing swelling, stiffness, and pain that gets worse during or after you use your ankle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "OSTEOARTHRITIS", "score": 10}
        ]
      }
    ],

    "Eyes": [
      //Q0
      {
        "question": "Is your eye tearing?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "CHALAZION", "score": 5},
          {"diagnosis": "HORDEOLUM", "score": 5},
          {"diagnosis": "STYE", "score": 5}
        ],
      },
      //Q1
      {
        "question": "Do you have blurred vision?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "TOOMUCHGLUCOSE", "score": 10}
        ],
      },
      //Q2
      {
        "question":
            "Have you recently injured your eye, and are you experiencing any \n of the following symptoms: sudden appearance of spots and strings floating in your \n field of vision; flashes of light in 1 or both eyes; partial loss of vision (like a shade being pulled down over part of your vision)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "DETACHED RETINA", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Is your eye red, and do you have severe eye pain, or has your \n vision suddenly decreased or become cloudy?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ACUTE GLAUCOMA", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Are you experiencing flu-like symptoms, such as fever, fatigue, \n muscle aches, and pain in one or both temples?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TEMPORAL ARTERITIS", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you have thick nasal drainage and pain or pressure on your \n forehead and behind your eyes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SINUSITIS", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Are your eyes red or sensitive to light, are you experiencing eye \n pain, and do you see dark, floating spots?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "IRITIS", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do you have diabetes, and have you noticed any changes in your vision?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TOOMUCHGLUCOSE", "score": 10}
        ]
      },
      //Q8
      {
        "question":
            "Are your eyes red, itchy, or swollen, or is there a bite-like \n swelling on one of your eyelids?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ALLERGY or INSECT BYTE", "score": 10}
        ]
      },
      //Q9
      {
        "question":
            "Do you have a fever, and is your eyelid swollen, red, and/or tender to the touch?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PERIORBITAL CELLULITIS", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Is there a firm, painful lump in the eyelid or a tender ‘pimple’ \n on the edge of the eyelid?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": 11}
        ],
        "onYesResponse": [
          {"diagnosis": "CHALAZION", "score": 5},
          {"diagnosis": "HORDEOLUM", "score": 5},
          {"diagnosis": "STYE", "score": 5}
        ],
      },
      //Q11
      {
        "question":
            "Is your eye red, is your vision blurry, and do you feel like you \n have sand in your eye (foreign body sensation)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": 12}
        ],
        "onYesResponse": [
          {"diagnosis": "SCRATCHED CORNEA / CORNEAL ABRASION", "score": 5}
        ]
      },
      //Q12
      {
        "question":
            "Is the white of the eye pink, red, or irritated, and is there any \n secretion or mucus coming from the eye? Did you wake up with your eyelids sealed shut?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 13},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CONJUNCTIVITIS", "score": 15}
        ]
      },
      //Q13
      {
        "question":
            "Do you have a burning sensation in the eye, is the eye red and \n itchy, and is the skin around the eye scaling?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "BLEPHARITIS", "score": 10}
        ]
      },
      //Q14
      {
        "question": "Do you wear contact lenses, and do you have eye pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SCRATCHED CORNEA / CORNEAL ABRASION", "score": 10}
        ]
      }
    ],

    "Ears": [
      //Q0
      {
        "question": "Do you have a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "OTITIS MEDIA", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Are you experiencing pain deep in the ear or fluid draining from the ear?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "OTITIS MEDIA", "score": 10}
        ]
      },
      //Q2
      {
        "question":
            "Do you have redness and swelling of the outer ear and the surrounding skin?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "EAR MAY BE SERIOUSLY INFECTED", "score": 10}
        ]
      },
      //Q3
      {
        "question": "Do you have headache-type pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "MASTOIDITIS", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Does your ear has redness behind or tenderness when you touch the bone behind your ear?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "MASTOIDITIS", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you have thick pus-filled (white) or bloody drainage from the ear canal that started after a sharp, sudden pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "RUPTURED EARDRUM", "score": 10}
        ]
      },
      //Q6
      {
        "question": "Is your ear swollen?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "OTITIS EXTERNA", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Does it itch or hurt when you pull on your ear or earlobe?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "OTITIS EXTERNA", "score": 10}
        ]
      },
      //Q8
      {
        "question":
            "Does your jaw joint “crack” when you chew or open your mouth, or do you feel tenderness in your jaw when chewing?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TEMPOROMANDIBULAR JOINT SYNDROME", "score": 10}
        ]
      },
      //Q9
      {
        "question": "Do you hear/feel fluid in your ear?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "BLOCKED EUSTACHIAN TUBE", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Do you feel pressure or stuffiness that can’t be cleared with coughing, yawning, or swallowing?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": 11}
        ],
        "onYesResponse": [
          {"diagnosis": "BLOCKED EUSTACHIAN TUBE", "score": 10}
        ]
      },
      //Q11
      {
        "question": "Do you have cold or flu symptoms?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "BLOCKED EUSTACHIAN TUBE", "score": 10}
        ]
      },
      //Q12
      {
        "question":
            "Did your ear pain start during an airplane flight or right after you traveled on an airplane?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 13},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "BAROTRAUMA", "score": 10}
        ]
      },
      //Q13
      {
        "question":
            "Is the affected person a child who doesn’t have ear pain or redness but is having problems hearing",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SEROUS OTITIS", "score": 10},
          {"diagnosis": "CERUMINOSIS", "score": 10},
        ]
      },
      //Q14
      {
        "question":
            "Do you have swelling or thickening of one or more ears after wrestling or doing another contact sport or fighting event?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 15},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CAULIFLOWER EAR", "score": 10}
        ]
      },
      //Q15
      {
        "question":
            "Is fullness of the ear present on one or both sides without any other symptoms? Does the person have a history of ear wax production?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 16},
          {"answer": "Yes", "nextQuestion": 16}
        ],
        "onYesResponse": [
          {"diagnosis": "SEROUS OTITIS", "score": 10},
          {"diagnosis": "CERUMINOSIS", "score": 10},
        ]
      },
      //Q16
      {
        "question":
            "Do you have tooth pain on the same side as the ear pain when you bite down?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 17},
          {"answer": "Yes", "nextQuestion": 17}
        ],
        "onYesResponse": [
          {"diagnosis": "TOOTH PROBLEM", "score": 10},
        ]
      },
      //Q17
      {
        "question": "Can you see or feel a “pimple” in the ear canal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "INFECTION or LOCAL INFLAMMATION", "score": 10},
        ]
      }
    ],

    "Shoulders": [
      //Q0
      {
        "question":
            "Did you hit, injure, or fall on your upper arm or shoulder recently?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "DISLOCATED SHOULDER/SUBLUXED", "score": 5}
        ]
      },
      //Q1
      {
        "question":
            "Did you feel your shoulder pop out of place or pop back into place?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "DISLOCATED SHOULDER/SUBLUXED", "score": 10}
        ]
      },
      //Q2
      {
        "question": "Is your upper arm swollen or deformed?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURED/DISLOCATED HUMERUS", "score": 10}
        ]
      },
      //Q3
      {
        "question": "Is your collarbone tender or do you have a bump on it?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURED CLAVICLE", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Is there tenderness or pain near the shoulder end of your \n collarbone, and does lifting your arm with your uninjured arm help the pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "AC JOINT SEPARATION", "score": 10}
        ]
      },
      //Q5
      {
        "question": "Does pain come with a twisting motion of your arm?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "TORN ROTATOR CUFF/SHOULDER INSTABILITY.", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Does a throwing motion cause pain, and does your shoulder seem weak?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "TORN ROTATOR CUFF/SHOULDER INSTABILITY.", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Within the last month have you had a sore throat or a skin infection?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 8}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATIC FEVER", "score": 10}
        ]
      },
      //Q8
      {
        "question":
            "Do you have redness and swelling in more than one joint, including your shoulder?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "RHEUMATOID ARTHRITIS,", "score": 10}
        ]
      },
      //Q9
      {
        "question":
            "Do you feel pain when you move your arm above the level of your shoulder?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {
            "diagnosis": "IMPINGEMENT/BURSITIS/ROTATOR CUFF SYNDROME",
            "score": 10
          }
        ]
      },
      //Q10
      {
        "question": "There’s no swelling or redness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {
            "diagnosis": "IMPINGEMENT/BURSITIS/ROTATOR CUFF SYNDROME",
            "score": 10
          }
        ]
      },
      //Q11
      {
        "question":
            "Do you have increasing stiffness and inability to move your shoulder?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": 12}
        ],
        "onYesResponse": [
          {"diagnosis": "ADHESIVE CAPSULITIS/FROZEN SHOULDER", "score": 10}
        ]
      },
      //Q12
      {
        "question": "Do you also have diabetes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ADHESIVE CAPSULITIS/FROZEN SHOULDER", "score": 10}
        ]
      }
    ],
    "Back": [
      //Q0
      {
        "question":
            "Do you have numbness, burning, or electrical pain extending down the side of back of your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "HERNIATED DISC", "score": 10},
          {"diagnosis": "SCIATICA", "score": 10}
        ]
      },
      //Q1
      {
        "question": "Are you over 60 years, have arthritis?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURED SPINE", "score": 10}
        ]
      },
      //Q2
      {
        "question": "Are you experiencing severe pain with any movement?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "FRACTURED SPINE", "score": 10}
        ]
      },
      //Q3
      {
        "question": "Do you have pain when twisting, bending, or even sitting?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "MUSCLE SPASM", "score": 10}
        ]
      },
      //Q4
      {
        "question": "Is the pain centered in the lower spine?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "HERNIATED DISC", "score": 10},
          {"diagnosis": "SPINAL STENOSIS", "score": 10}
        ]
      },
      //Q5
      {
        "question": "Do you have pain down your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "HERNIATED DISC", "score": 15},
          {"diagnosis": "SPINAL STENOSIS", "score": 15}
        ]
      },
      //Q6
      {
        "question":
            "Does bending forward while walking seem to make it feel better?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HERNIATED DISC", "score": 20},
          {"diagnosis": "SPINAL STENOSIS", "score": 20}
        ]
      },
      //Q7
      {
        "question":
            "Do you have back pain that wakes you up at night? Have you had unintentional weight loss?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CANCER", "score": 10}
        ]
      },
      //Q8
      {
        "question": "Do you have a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": 9}
        ],
        "onYesResponse": [
          {"diagnosis": "PYELONEPHRITIS", "score": 10},
          {"diagnosis": "KIDNEY STONES", "score": 10}
        ]
      },
      //Q9
      {
        "question":
            "Do you have blood in your urine and one-sided back pain along with burning during urination?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PYELONEPHRITIS", "score": 10},
          {"diagnosis": "KIDNEY STONES", "score": 10}
        ]
      }
    ],

    // {
    //   "question":
    //   "Do you have pain that comes and goes that may have started in your teenage years?",
    //   "answerType": AnswerType.MULTIPLE_CHOICE,
    //           "answerChoices": [{"answer": "No", "nextQuestion": 1 }, {"answer": "Yes", "nextQuestion": 1}],
    //   "onYesResponse":
    //   "You may have SPONDYLOLISTHESIS, when one vertebra in the spine slips over another, or SPONDYLOSIS, a type of arthritis resulting from wear and tear of the spine.",
    // }, TODO
    // {
    //   "question":
    //   "Do you have blood in your urine and one-sided back pain along with burning during urination?",
    //   "answerType": AnswerType.MULTIPLE_CHOICE,
    //           "answerChoices": [{"answer": "No", "nextQuestion": 1 }, {"answer": "Yes", "nextQuestion": 1}],
    //   "onYesResponse":
    //   "You may have a kidney infection, such as PYELONEPHRITIS. You may also have KIDNEY STONES",
    // }, TODO
    // {
    //   "question":
    //   "Is your back stiff and sore in the morning and are other joints stiff, sore, swollen, or red?",
    //   "answerType": AnswerType.MULTIPLE_CHOICE,
    //           "answerChoices": [{"answer": "No", "nextQuestion": 1 }, {"answer": "Yes", "nextQuestion": 1}],
    //   "onYesResponse":
    //   "You may have ANKYLOSING SPONDYLITIS, a form of arthritis that affects the spine. Other forms of ARTHRITIS can also cause back pain and stiffness.",
    // }, TODO
    //Q3

    "Elbows": [
      //Q0
      {
        "question":
            "On the outside of the elbow, do you feel a gradual onset elbow pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "TENNIS ELBOW", "score": 5},
          {"diagnosis": "RADIOHUMERAL BURSITIS", "score": 5},
          {
            "diagnosis": "OSTEOCHONDRITIS DISSECANS IN THE ELBOW JOINT",
            "score": 5
          },
          {"diagnosis": "RADIAL TUNNEL SYNDROME", "score": 5},
        ]
      },
      //Q1
      {
        "question":
            "On the outside of the elbow, do you feel weakness or pain gripping?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "TENNIS ELBOW", "score": 5},
          {"diagnosis": "RADIOHUMERAL BURSITIS", "score": 5},
          {"diagnosis": "RADIAL TUNNEL SYNDROME", "score": 5}
        ]
      },
      //Q2
      {
        "question": "On the outside of the elbow, do you have a swelling?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {
            "diagnosis": "OSTEOCHONDRITIS DISSECANS IN THE ELBOW JOINT",
            "score": 5
          }
        ]
      },
      //Q3
      {
        "question":
            "On the outside of the elbow, do you feel a locking elbow joint?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {
            "diagnosis": "OSTEOCHONDRITIS DISSECANS IN THE ELBOW JOINT",
            "score": 5
          }
        ]
      },
      //Q4
      {
        "question":
            "In the inside of the elbow, do you feel a swelling on the elbow?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "ELBOW AVULSION FRACTURE", "score": 5},
          {"diagnosis": "MEDIAL ELBOW LIGAMENT SPRAIN", "score": 5},
          {"diagnosis": "GOLFER'S ELBOW", "score": 5}
        ]
      },
      //Q5
      {
        "question":
            "In the inside of the elbow, do you feel a tenderness on the inside of the elbow?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "ELBOW AVULSION FRACTURE", "score": 5},
          {"diagnosis": "MEDIAL ELBOW LIGAMENT SPRAIN", "score": 5},
          {"diagnosis": "GOLFER'S ELBOW", "score": 5}
        ]
      },
      //Q6
      {
        "question":
            "In the inside of the elbow, do you feel a weeknes or pain gripping?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "ELBOW AVULSION FRACTURE", "score": 5},
          {"diagnosis": "GOLFER'S ELBOW", "score": 5}
        ]
      },
      //Q7
      {
        "question":
            "In the inside of the elbow, do you feel a gradual onset elbow pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 8}
        ],
        "onYesResponse": [
          {"diagnosis": "GOLFER'S ELBOW", "score": 5}
        ]
      },
      //Q8
      {
        "question":
            "Do you feel the acute elbow pain injury with a swelling on the elbow?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": 9}
        ],
        "onYesResponse": [
          {"diagnosis": "ELBOW AVULSION FRACTURE", "score": 5},
          {"diagnosis": "MEDIAL ELBOW LIGAMENT SPRAIN", "score": 5},
          {"diagnosis": "ELBOW HYPEREXTENSION INJURY", "score": 5},
          {"diagnosis": "DISLOCATED ELBOW", "score": 5},
          {"diagnosis": "ELBOW & FOREARM FRACTURES ", "score": 5},
        ]
      },
      //Q9
      {
        "question":
            "Do you feel the acute elbow pain injury with a tenderness on the inside of the elbow?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "ELBOW AVULSION FRACTURE", "score": 5},
          {"diagnosis": "MEDIAL ELBOW LIGAMENT SPRAIN", "score": 5},
          {"diagnosis": "ULNAR NERVE COMPRESSION", "score": 5}
        ]
      },
      //Q10
      {
        "question":
            "Do you feel the acute elbow pain injury with a weakness or pain gripping?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": 11}
        ],
        "onYesResponse": [
          {"diagnosis": "ELBOW AVULSION FRACTURE", "score": 5}
        ]
      },
      //Q11
      {
        "question":
            "Do you feel the acute elbow pain injury with a tenderness at the back of the elbow?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": 12}
        ],
        "onYesResponse": [
          {"diagnosis": "GOLFER'S ELBOW", "score": 5},
        ]
      },
      //Q12
      {
        "question":
            "On the back of the elbow do you feel a gradual onset elbow pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 13},
          {"answer": "Yes", "nextQuestion": 13}
        ],
        "onYesResponse": [
          {"diagnosis": "TRICEPS TENDONITIS", "score": 5},
          {"diagnosis": "ELBOW BURSITIS(STUDENTS ELBOW)", "score": 5}
        ]
      },
      //Q13
      {
        "question": "On the back of the elbow do you feel a tenderness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": 14}
        ],
        "onYesResponse": [
          {"diagnosis": "TRICEPS TENDONITIS", "score": 5},
          {"diagnosis": "ELBOW BURSITIS(STUDENTS ELBOW)", "score": 5},
          {"diagnosis": "OLECRANON FRACTURE", "score": 5}
        ]
      },
      //Q14
      {
        "question":
            "On the back of the elbow do you have a swelling on the elbow?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ELBOW BURSITIS(STUDENTS ELBOW)", "score": 5},
          {"diagnosis": "OLECRANON FRACTURE", "score": 5}
        ]
      },
    ],

    "Glutes": [
      //Q0
      {
        "question": "Do you feel pain deep in the buttock?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "PIRIFORMIS SYNDROME", "score": 5},
          {"diagnosis": "MYOFASCIAL PAIN IN BUTTOCK MUSCLES", "score": 5}
        ]
      },
      //Q1
      {
        "question": "Do you feel a buttock pain radiating into legs?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "PIRIFORMIS SYNDROME", "score": 5}
        ]
      },
      //Q2
      {
        "question": "Do you feel a sharp pain in the buttock?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "PIRIFORMIS SYNDROME", "score": 5}
        ]
      },
      //Q3
      {
        "question": "Do you feel pain under buttock?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PELVIC AVULSION FRACTURE", "score": 5}
        ]
      },
      //Q4
      {
        "question": "Do you feel a lower back pain/stiffness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "MYOFASCIAL PAIN IN BUTTOCK MUSCLES", "score": 5},
          {"diagnosis": "SACROILIAC JOINT PAIN", "score": 5}
        ]
      },
      //Q5
      {
        "question": "Do you feel a upper back pain/stiffness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "MYOFASCIAL PAIN IN BUTTOCK MUSCLES", "score": 5},
          {"diagnosis": "SACROILIAC JOINT PAIN", "score": 5}
        ]
      },
      //Q6
      {
        "question": "Do you feel a front hip pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "RECTUS FEMORIS TENDON STRAIN", "score": 5},
          {"diagnosis": "HIP POINTER", "score": 5},
          {"diagnosis": "ILIUM APOPHYSITIS", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5}
        ]
      },
      //Q7
      {
        "question": "Did you feel a sudden hip pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 8}
        ],
        "onYesResponse": [
          {"diagnosis": "RECTUS FEMORIS TENDON STRAIN", "score": 5},
          {"diagnosis": "HIP POINTER", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5}
        ]
      },
      //Q8
      {
        "question": "Do you feel a chronic hip pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": 9}
        ],
        "onYesResponse": [
          {"diagnosis": "PELVIC STRESS FRACTURE", "score": 5},
          {"diagnosis": "PERTHES' DISEASE", "score": 5},
          {"diagnosis": "HIP BURSITIS", "score": 5},
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5},
          {"diagnosis": "SLIPPED CAPITAL FEMORAL EPIPHYSIS", "score": 5}
        ]
      },
      //Q9
      {
        "question": "Do you feel a gradual onset groin pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "PELVIC STRESS FRACTURE", "score": 5},
          {"diagnosis": "PERTHES' DISEASE", "score": 5},
          {"diagnosis": "HIP BURSITIS", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5},
          {"diagnosis": "SLIPPED CAPITAL FEMORAL EPIPHYSIS", "score": 5}
        ]
      },
      //Q10
      {
        "question": "Do you feel a hip stiffness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": 11}
        ],
        "onYesResponse": [
          {"diagnosis": "PELVIC STRESS FRACTURE", "score": 5},
          {"diagnosis": "HIP POINTER", "score": 5},
          {"diagnosis": "ILIUM APOPHYSITIS", "score": 5},
          {"diagnosis": "PERTHES' DISEASE", "score": 5},
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5},
          {"diagnosis": "SLIPPED CAPITAL FEMORAL EPIPHYSIS", "score": 5}
        ]
      },
      //Q11
      {
        "question": "Do you have a hip swelling?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": 12}
        ],
        "onYesResponse": [
          {"diagnosis": "HIP POINTER", "score": 5},
          {"diagnosis": "ILIUM APOPHYSITIS", "score": 5},
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5},
        ]
      },
      //Q12
      {
        "question": "Do you have an outer hip pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 13},
          {"answer": "Yes", "nextQuestion": 13}
        ],
        "onYesResponse": [
          {"diagnosis": "HIP POINTER", "score": 5},
          {"diagnosis": "HIP BURSITIS", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5}
        ]
      },
      //Q13
      {
        "question": "Do you have sore hips?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 14},
          {"answer": "Yes", "nextQuestion": 14}
        ],
        "onYesResponse": [
          {"diagnosis": "HIP POINTER", "score": 5},
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5},
          {"diagnosis": "SLIPPED CAPITAL FEMORAL EPIPHYSIS", "score": 5}
        ]
      },
      //Q14
      {
        "question": "Do you have aching hips?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 15},
          {"answer": "Yes", "nextQuestion": 15}
        ],
        "onYesResponse": [
          {"diagnosis": "ILIUM APOPHYSITIS", "score": 5},
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5},
          {"diagnosis": "SLIPPED CAPITAL FEMORAL EPIPHYSIS", "score": 5}
        ]
      },
      //Q15
      {
        "question": "Hip pain in Children / Injuries affecting young athletes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 16},
          {"answer": "Yes", "nextQuestion": 16}
        ],
        "onYesResponse": [
          {"diagnosis": "PERTHES' DISEASE", "score": 5}
        ]
      },
      //Q16
      {
        "question": "Do you have hip pain balancing on one leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 17},
          {"answer": "Yes", "nextQuestion": 17}
        ],
        "onYesResponse": [
          {"diagnosis": "HIP BURSITIS", "score": 5},
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5}
        ]
      },
      //Q17
      {
        "question": "Do you feel hip joint pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 18},
          {"answer": "Yes", "nextQuestion": 18}
        ],
        "onYesResponse": [
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5},
          {"diagnosis": "LABRAL TEAR OF THE HIP JOINT", "score": 5},
          {"diagnosis": "SLIPPED CAPITAL FEMORAL EPIPHYSIS", "score": 5}
        ]
      },
      //Q18
      {
        "question": "Do you feel hip pain at night?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 19},
          {"answer": "Yes", "nextQuestion": 19}
        ],
        "onYesResponse": [
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5}
        ]
      },
      //Q19
      {
        "question": "Do you feel hip pain when sitting?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "OSTEOARTHRITIS OF THE HIP", "score": 5},
          {"diagnosis": "SYNOVITIS OF THE HIP", "score": 5}
        ]
      }
    ],

    "Head Back": [
      //Q0
      {
        "question":
            "Do you have a head injury such as direct trauma/shaking of the head?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "BRAIN BLEED", "score": 5},
          {"diagnosis": "SKULL FRACTURE", "score": 5},
          {"diagnosis": "CONCUSSION", "score": 5},
          {"diagnosis": "HEADACHES IN SPORT", "score": 5},
          {"diagnosis": "POST CONCUSSION SYNDROME", "score": 5}
        ]
      },
      //Q1
      {
        "question": "Do you have a head injury that provokes a headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "BRAIN BLEED", "score": 5},
          {"diagnosis": "SKULL FRACTURE", "score": 5},
          {"diagnosis": "CONCUSSION", "score": 5},
          {"diagnosis": "HEADACHES IN SPORT", "score": 5},
          {"diagnosis": "POST CONCUSSION SYNDROME", "score": 5},
          {"diagnosis": "MIGRAINE", "score": 5}
        ]
      },
      //Q2
      {
        "question": "Do you have a head injury and nausea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "BRAIN BLEED", "score": 5},
          {"diagnosis": "SKULL FRACTURE", "score": 5},
          {"diagnosis": "CONCUSSION", "score": 5},
          {"diagnosis": "HEADACHES IN SPORT", "score": 5},
          {"diagnosis": "POST CONCUSSION SYNDROME", "score": 5}
        ]
      },
      //Q3
      {
        "question":
            "Do you have a head injury and are you bleeding from ears, eyes, or nose?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 4}
        ],
        "onYesResponse": [
          {"diagnosis": "SKULL FRACTURE", "score": 5}
        ]
      },
      //Q4
      {
        "question": "Did you have a head injury and you lost consciousness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 5}
        ],
        "onYesResponse": [
          {"diagnosis": "SKULL FRACTURE", "score": 5},
          {"diagnosis": "CONCUSSION", "score": 5}
        ]
      },
      //Q5
      {
        "question": "Do you have a straw coloured liquid from eyes or ears?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "SKULL FRACTURE", "score": 5}
        ]
      },
      //Q6
      {
        "question": "Do you have visual disturbance after a head injury?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 7}
        ],
        "onYesResponse": [
          {"diagnosis": "SKULL FRACTURE", "score": 5},
          {"diagnosis": "CONCUSSION", "score": 5},
          {"diagnosis": "MIGRAINE", "score": 5}
        ]
      },
      //Q7
      {
        "question":
            "Did you have memory loss or confusion after a head injury?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": 8}
        ],
        "onYesResponse": [
          {"diagnosis": "CONCUSSION", "score": 5},
          {"diagnosis": "POST CONCUSSION SYNDROME", "score": 5}
        ]
      },
      //Q8
      {
        "question": "Do you feel dizziness after a head injury?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CONCUSSION", "score": 10},
          {"diagnosis": "POST CONCUSSION SYNDROME", "score": 5},
          {"diagnosis": "HEADACHES IN SPORT", "score": 5}
        ]
      }
    ],

    "Head Front": [
      //Q0
      {
        "question":
            "Do you have a fever, cold symptoms, nausea, vomiting, or diarrhea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "COLD/FLU", "score": 10}
        ]
      },
      //Q1
      {
        "question": "Do you have a severe headache, stiff neck or vomiting?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 2}
        ],
        "onYesResponse": [
          {"diagnosis": "MENINGITIS", "score": 10}
        ]
      },
      //Q2
      {
        "question":
            "Does normal light hurt your eyes, or do normal sounds hurt your ears?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": 3}
        ],
        "onYesResponse": [
          {"diagnosis": "MENINGITIS", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Do you have numbness, tingling, or weakness in the arms and legs, or do you have trouble speaking or understanding speech?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "STROKE/TRANSIENT ISCHEMIC ATTACK", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Do you have pressure around your eyes, or do you have congestion with yellowish-green nasal discharge and a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SINUS INFECTION or SINUSITIS.", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you have mild to moderate pressure or tightening around your temples?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "TENSION HEADACHE", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Does the pain occur during times of stress or after you have been sitting in one position for a long time?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TENSION HEADACHE", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do you have intense throbbing pain on one side of your head or temple, often with associated nausea or vomiting?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": 8}
        ],
        "onYesResponse": [
          {"diagnosis": "MIGRAINE HEADACHES", "score": 10}
        ]
      },
      //Q8
      {
        "question": "And do see flashing lights or spots before the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "MIGRAINE HEADACHES", "score": 10}
        ]
      },
      //Q9
      {
        "question":
            "Do your headaches occur after you read, watch TV, or use a computer?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VISION PROBLEMS", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Do you get headaches and feel shaky and weak if you miss a meal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 11},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HYPOGLYCEMIA", "score": 10}
        ]
      },
      //Q11
      {
        "question":
            "Are you trying to cut down on caffeine, alcohol, or some other drug?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 12},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "WITHDRAWAL", "score": 10}
        ]
      },
      //Q12
      {
        "question": "Do you have headaches that occur daily for several days?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": 13}
        ],
        "onYesResponse": [
          {"diagnosis": "CLUSTER HEADACHES.", "score": 10}
        ]
      },
      //Q13
      {
        "question":
            "Do you have eye discharge and runny nose from the same side as the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CLUSTER HEADACHES.", "score": 10}
        ]
      }
    ],

    "Cough": [
      //Q0
      {
        "question":
            "Has your cough begun recently? Consider recent exposures you may have experienced, including new pets, new environments, new medications, etc.",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": 10}
        ],
        "onYesResponse": [
          {"diagnosis": "IRRITATION OF THE AIRWAYS", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Are you very short of breath, and are you coughing up pink, frothy mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PULMONARY EDEMA", "score": 10}
        ]
      },
      //Q2
      {
        "question": "Does your cough produce clear or pale yellow mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VIRAL INFECTION", "score": 10}
        ]
      },
      //Q3
      {
        "question": "Does your cough produce yellow, tan, or green mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": 13}
        ],
        "onYesResponse": [
          {"diagnosis": "CHRONIC BRONCHITIS", "score": 10},
          {"diagnosis": "PNEUMONIA", "score": 5}
        ]
      },
      //Q4
      {
        "question":
            "Does the cough come with shortness of breath and wheezing?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ASTHMA", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Have you recently started coughing up blood or bloody sputum?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": 6}
        ],
        "onYesResponse": [
          {"diagnosis": "TUBERCULOSIS", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Have you recently started having sharp chest pain, rapid heartbeat, swelling of the legs and sudden shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TUBERCULOSIS", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do you have a fever, chills and night sweats along with chest pain when you cough or take a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TUBERCULOSIS", "score": 10}
        ]
      },
      //Q8
      {
        "question": "Have you unintentionally lost weight?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "LUNG CANCER", "score": 10}
        ]
      },
      //Q9
      {
        "question": "Did you inhale dust, particles, or an object?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "IRRITATION OF THE AIRWAYS", "score": 10}
        ]
      },
      //Q10
      {
        "question": "Do you have a fever with shaking chills and are very ill?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "PNEUMONIA", "score": 10},
        ]
      }
    ],

    "Cold and Flu": [
      //Q0
      {
        "question": "Do you have a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": 1}
        ],
        "onYesResponse": [
          {"diagnosis": "STREP THROAT", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Do you have a sore throat and headache without nasal drainage or a cough?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "STREP THROAT", "score": 10}
        ]
      },
      //Q2
      {
        "question":
            "Did your symptoms start suddenly, and do you have a combination of symptoms including muscle aches, fatigue, chills, sore throat, runny nose, and/or cough?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "INFLUENZA", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Are you experiencing wheezing, shortness of breath, and a persistent cough that brings up clear, yellow, or green mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VIRAL BRONCHITIS", "score": 10}
        ]
      },
      //Q4
      {
        "question":
            "Do you have a headache or muscle aches, nausea or vomiting, and watery diarrhea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": " GASTROENTERITIS", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Are you experiencing a runny and/or itchy nose, sneezing, and itchy eyes that get worse when you are outside or around certain triggers?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "ALLERGIC RHINITIS", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Are you experiencing sneezing, a sore throat with a cough, a headache, congestion, and a runny nose?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "COLD", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do you have pressure or pain around your eyes, cheeks, nose, or forehead; nasal congestion; a headache; a dry cough; and/or any type of discharge from your nose?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SINUSITIS", "score": 10}
        ]
      }
    ],

    "Headaches": [
      //Q0
      {
        "question":
            "Do you have a fever, cold symptoms, nausea, vomiting, or diarrhea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "GASTROENTERITIS", "score": 10},
          {"diagnosis": "COLD", "score": 10}
        ]
      },
      //Q1
      {
        "question":
            "Do you have a severe headache, stiff neck, vomiting, and does normal light hurt your eyes, or do normal sounds hurt your ears?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 2},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "MENINGITIS", "score": 10}
        ]
      },
      //Q2
      {
        "question": "Have you injured your head or been knocked out recently?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 3},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "CONCUSSION", "score": 10}
        ]
      },
      //Q3
      {
        "question":
            "Do you have numbness, tingling, or weakness in the arms and legs, or do you have trouble speaking or understanding speech?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 4},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "STROKE / TRANSIENT ISCHEMIC ATTACK", "score": 15}
        ]
      },
      //Q4
      {
        "question":
            "Do you have pressure around your eyes, or do you have congestion with yellowish-green nasal discharge and a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 5},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "SINUSITIS", "score": 10}
        ]
      },
      //Q5
      {
        "question":
            "Do you have mild to moderate pressure or tightening around your temples, and does the pain occur during times of stress or after you have been sitting in one position for a long time?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 6},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "TENSION HEADACHE", "score": 10}
        ]
      },
      //Q6
      {
        "question":
            "Do you have intense throbbing pain on one side of your head or temple, often with associated nausea or vomiting, and do see flashing lights or spots before the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 7},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "MIGRAINE", "score": 10}
        ]
      },
      //Q7
      {
        "question":
            "Do your headaches occur after you read, watch TV, or use a computer?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 8},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "VISION PROBLEMS", "score": 10}
        ]
      },
      //Q8
      {
        "question":
            "Do you get headaches and feel shaky and weak if you miss a meal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 9},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HYPOGLYCEMIA", "score": 10}
        ]
      },
      //Q9
      {
        "question":
            "Are you trying to cut down on caffeine, alcohol, or some other drug?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": 10},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "WITHDRAWAL", "score": 10}
        ]
      },
      //Q10
      {
        "question":
            "Do you have headaches that occur daily for several days, and do you also have eye discharge and runny nose from the same side as the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": [
          {"answer": "No", "nextQuestion": -1},
          {"answer": "Yes", "nextQuestion": -1}
        ],
        "onYesResponse": [
          {"diagnosis": "HEADACHES IN SPORT", "score": 10}
        ]
      }
    ]
  };
}
