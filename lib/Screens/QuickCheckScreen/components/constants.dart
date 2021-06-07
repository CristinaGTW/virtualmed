import 'query_body.dart';

class Constants {
  static const query = {
    "Hands": [
      // {
      //   "question": "How bad does it hurt when ...?",
      //   "answerType": AnswerType.INTENSITY
      // },
      // {
      //   "question": "Are you experiencing ...?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["Yes", "No", "Sometimes"],
      //   "onYesResponse": [
      //     {
      //       "Tendonitis": 20,
      //       "Sprained wrist": 10,
      //     }
      //   ]
      // },
      // {
      //   "question": "Multiple choice test",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["choice 1", "choice 2", "choice 3", "choice 4"]
      // },
      // {"question": "Describe what happened", "answerType": AnswerType.TEXT_BOX}
    ],
    "Feet": [
      {
        "question":
            "Did you begin to have pain and/or swelling after the ankle was hit or after a fall or a twisting injury?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "Sprain", "score": 5},
      },
      {
        "question":
            "Is the ankle significantly swollen, and is the pain so intense that you can’t put weight on that foot?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "Sprain", "score": 5}
      },
      {
        "question":
            "Is the ankle swollen and bruised, and can you still put weight on that foot?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "Sprained ankle", "score": 10}
      },
      {
        "question":
            "Do you have swelling, stiffness (especially in the morning), and/or pain that comes and goes in both ankles?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "RHEUMATOID ARTHRITIS or OSTEOARTHRITIS",
          "score": 10
        }
      },
      {
        "question":
            "Do you have a fever, and is one or more of your joints painful, swollen, and red?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "RHEUMATIC FEVER", "score": 10}
      },
      {
        "question":
            "Did the pain start suddenly, and is it painful when clothing or bedding rubs against your ankle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "GOUT", "score": 10}
      },
      {
        "question":
            "Do you usually feel pain before or during a change in the weather, and/or are you experiencing swelling, stiffness, and pain that gets worse during or after you use your ankle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "OSTEOARTHRITIS", "score": 10}
      }
    ],
    "Eyes": [
      // {
      //   "question": "Is your eye tearing?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse": " ... ",
      // },
      // {
      //   "question": "Do you have blurred vision?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse": " ... ",
      // },
      {
        "question":
            "Have you recently injured your eye, and are you experiencing any of the following symptoms: sudden appearance of spots and strings floating in your field of vision; flashes of light in 1 or both eyes; partial loss of vision (like a shade being pulled down over part of your vision)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "DETACHED RETINA", "score": 10}
      },
      {
        "question":
            "Is your eye red, and do you have severe eye pain, or has your vision suddenly decreased or become cloudy?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "ACUTE GLAUCOMA", "score": 10}
      },
      {
        "question":
            "Are you experiencing flu-like symptoms, such as fever, fatigue, muscle aches, and pain in one or both temples?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "TEMPORAL ARTERITIS", "score": 10}
      },
      {
        "question":
            "Do you have thick nasal drainage and pain or pressure on your forehead and behind your eyes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "SINUSITIS", "score": 10}
      },
      {
        "question":
            "Are your eyes red or sensitive to light, are you experiencing eye pain, and do you see dark, floating spots?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "IRITIS", "score": 10}
      },
      {
        "question":
            "Do you have diabetes, and have you noticed any changes in your vision?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "TOOMUCHGLUCOSE", "score": 10}
      },
      {
        "question":
            "Are your eyes red, itchy, or swollen, or is there a bite-like swelling on one of your eyelids?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": "ALLERGY or an INSECT BITE", //TODO
      },
      {
        "question":
            "Do you have a fever, and is your eyelid swollen, red, and/or tender to the touch?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "PERIORBITAL CELLULITIS", "score": 10}
      },
      {
        "question":
            "Is there a firm, painful lump in the eyelid or a tender ‘pimple’ on the edge of the eyelid?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": "CHALAZION or HORDEOLUM or STYE", //TODO
      },
      {
        "question":
            "Is your eye red, is your vision blurry, and do you feel like you have sand in your eye (foreign body sensation)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "SCRATCHED CORNEA", "score": 10}
      },
      {
        "question":
            "Is the white of the eye pink, red, or irritated, and is there any secretion or mucus coming from the eye? Did you wake up with your eyelids sealed shut?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "CONJUNCTIVITIS", "score": 10}
      },
      {
        "question":
            "Do you have a burning sensation in the eye, is the eye red and itchy, and is the skin around the eye scaling?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "BLEPHARITIS", "score": 10}
      },
      {
        "question": "Do you wear contact lenses, and do you have eye pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse":
            "INFECTION, CORNEAL ABRASION, or a scratch caused by your contact lens",
      }
    ],
    "Ears": [
      // {
      //   "question": "Do you have a fever?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse": "Q2",
      // }, // TODO
      {
        "question":
            "Are you experiencing pain deep in the ear and/or fluid draining from the ear?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "OTITIS", "score": 10}
      },
      {
        "question":
            "Do you have redness and swelling of the outer ear and the surrounding skin?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "Self Care - See a doctor right away",
          "score": 10
        }
      },
      {
        "question":
            "Do you have headache-type pain and redness behind your ear or tenderness when you touch the bone behind your ear?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "MASTODITIS", "score": 10}
      },
      {
        "question":
            "Do you have thick pus-filled (white) or bloody drainage from the ear canal that started after a sharp, sudden pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "RUPTURED EARDRUM", "score": 10}
      },
      {
        "question":
            "Is your ear swollen, and does it itch or hurt when you pull on your ear or earlobe?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "otitis externa", "score": 10}
      },
      {
        "question":
            "Does your jaw joint “crack” when you chew or open your mouth, or do you feel tenderness in your jaw when chewing?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "temporomandibular joint syndrome",
          "score": 10
        }
      },
      {
        "question":
            "Do you hear/feel fluid in your ear, and feel pressure or stuffiness that can’t be cleared with coughing, yawning, or swallowing, and do you have cold or flu symptoms?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "BLOCKED EUSTACHIAN TUBE", "score": 10}
      },
      // {
      //   "question":
      //   "Do you have tooth pain on the same side as the ear pain when you bite down?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "A tooth problem can radiate/send pain to the ear on the same side.",
      // }, //TODO
      {
        "question":
            "Did your ear pain start during an airplane flight or right after you traveled on an airplane?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "BAROTRAUMA", "score": 10}
      },
      // {
      //   "question": "Can you see or feel a “pimple” in the ear canal?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "A small INFECTION or LOCAL INFLAMMATION in the ear canal may be the cause.",
      // }, TODO
      {
        "question":
            "Is the affected person a child who doesn’t have ear pain or redness but is having problems hearing",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "SEROUS OTITIS", "score": 10}
      },
      // {
      //   "question":
      //   "Is fullness of the ear present on one or both sides without any other symptoms? Does the person have a history of ear wax production?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "This is likely a buildup of wax in the ear canal (CERUMINOSIS or CERUMEN IMPACTION).",
      // }, TODO
      {
        "question":
            "Do you have swelling or thickening of one or more ears after wrestling or doing another contact sport or fighting event (e.g., boxing or mixed martial arts)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "CAULIFLOWER EAR", "score": 10}
      }
    ],
    // "LegProblems": [
    //   {
    //     "question":
    //     "Do you have pain in your leg or ankle after a fall or injury?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "Possible Broken Bone",
    //   },
    //   {
    //     "question":
    //     "Is there a deformity of your leg, or are you unable to stand or put pressure on your leg?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "Broken Bone",
    //   },
    //   {
    //     "question":
    //     "Did you hear a popping or grinding sound at the time of the injury?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "SPRAINED ankle",
    //   },
    //   {
    //     "question": "Is there bruising or swelling of your calf or ankle?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "ACHILLES TENDON",
    //   },
    //   {
    //     "question":
    //     "Do you have pain or mild swelling in the front or inner part of your lower leg that may have developed soon after starting or increasing physical activity, such as running, jumping or marching?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "SHIN SPLINTS, inflammation of the ligaments",
    //   },
    //   {
    //     "question":
    //     "Do you have pain, swelling, redness, or warmth in your calf? Is one calf bigger than the other?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "DEEP VENOUS THROMBOSIS",
    //   },
    //   {
    //     "question":
    //     "Do you have twisted dark blue or purple veins near the surface of the skin of your calf, and do you have pain or cramping in your calf or leg that is worse after standing or sitting for a long time?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "VARICOSE VEINS",
    //   },
    //   {
    //     "question":
    //     "Do you have a tender red area or a red streak anywhere on your leg?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "CELLULITIS",
    //   },
    //   {
    //     "question":
    //     "Do your calves ache after walking, and is the pain relieved with rest?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "PERIPHERAL ARTERIAL DISEASE (PAD)",
    //   },
    //   {
    //     "question": "Do you have swelling in both of your feet or lower legs?",
    //     "answerType": AnswerType.MULTIPLE_CHOICE,
    //     "answerChoices": ["No", "Yes"],
    //     "onYesResponse": "EDEMA",
    //   },
    // ],
    "Shoulders": [
      {
        "question":
            "Did you hit, injure, or fall on your upper arm or shoulder recently?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "Dislocated Shoulder or Subluxed",
          "score": 5
        }
      },
      {
        "question":
            "Did you feel your shoulder pop out of place and/or pop back into place?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "Dislocated Shoulder or Subluxed",
          "score": 10
        }
      },
      {
        "question": "Is your upper arm swollen or deformed?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "HUMERUS may be FRACTURED or Dislocated",
          "score": 10
        }
      },
      {
        "question": "Is your collarbone tender, or do you have a bump on it?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "CLAVICLE (collarbone) may be FRACTURED.",
          "score": 10
        }
      },
      // {
      //   "question":
      //   "Is there tenderness or pain near the shoulder end of your collarbone, and does lifting your arm with your uninjured arm help the pain?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "Your SHOULDER may be SEPARATED. This is also known as an AC JOINT SEPARATION.",
      // }, TODO
      {
        "question":
            "Does pain come with a twisting motion of your arm, or does a throwing motion cause pain, and does your shoulder seem weak?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "TORN ROTATOR CUFF or SHOULDER INSTABILITY.",
          "score": 10
        }
      },
      // {
      //   "question":
      //   "Do you have  fever and redness or swelling around your shoulder?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "You may have INFLAMMATION in or around a joint, also called BURSITIS, or a serious INFECTION of the bone, the joint or the skin.",
      // }, TODO
      {
        "question":
            "Within the last month have you had a sore throat or a skin infection?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "RHEUMATIC FEVER", "score": 10}
      },
      {
        "question":
            "Do you have redness and swelling in more than one joint, including your shoulder?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "RHEUMATOID ARTHRITIS,", "score": 10}
      },
      {
        "question":
            "Do you feel pain when you move your arm above the level of your shoulder, but there’s no swelling or redness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis":
              "You may have IMPINGEMENT, BURSITIS or ROTATOR CUFF SYNDROME.",
          "score": 10
        }
      },
      {
        "question":
            "Do you have increasing stiffness and inability to move your shoulder? Do you also have diabetes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis":
              "You may have ADHESIVE CAPSULITIS, also called a FROZEN SHOULDER",
          "score": 10
        }
      }
    ],
    "Back": [
      // {
      //   "question":
      //   "Do you have numbness, burning, or electrical pain extending down the side of back of your leg?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "You may have a HERNIATED DISC. You may also have SCIATICA, caused by irritation of the sciatic nerve.",
      // }, TODO
      {
        "question":
            "Are you over 60 years, have arthritis, and are you experiencing severe pain with any movement?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "FRACTURED SPINE.", "score": 10}
      },
      {
        "question": "Do you have pain when twisting, bending, or even sitting?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "MUSCLE SPASM", "score": 10}
      },
      // {
      //   "question":
      //   "Do you have pain that comes and goes that may have started in your teenage years?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "You may have SPONDYLOLISTHESIS, when one vertebra in the spine slips over another, or SPONDYLOSIS, a type of arthritis resulting from wear and tear of the spine.",
      // }, TODO
      // {
      //   "question":
      //   "Do you have blood in your urine and one-sided back pain along with burning during urination?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "You may have a kidney infection, such as PYELONEPHRITIS. You may also have KIDNEY STONES",
      // }, TODO
      // {
      //   "question":
      //   "Is your back stiff and sore in the morning and are other joints stiff, sore, swollen, or red?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "You may have ANKYLOSING SPONDYLITIS, a form of arthritis that affects the spine. Other forms of ARTHRITIS can also cause back pain and stiffness.",
      // }, TODO
      {
        "question": "Are you pregnant?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "PREGNANCY causes stretching of the tendons ",
          "score": 10
        }
      },
      {
        "question":
            "Is the pain centered in the lower spine, and do you have pain down your leg? Does bending forward while walking seem to make it feel better?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "You may have a HERNIATED DISC or SPINAL STENOSIS",
          "score": 10
        }
      },
      {
        "question":
            "Do you have back pain that wakes you up at night? Have you had unintentional weight loss?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis":
              "You may have a serious condition, including certain types of CANCER",
          "score": 10
        }
      }
    ],
    "Head Front": [
      {
        "question":
            "Do you have a fever, cold symptoms, nausea, vomiting, or diarrhea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis": "You may have the COLD or the FLU",
          "score": 10
        }
      },
      {
        "question":
            "Do you have a severe headache, stiff neck, vomiting, and does normal light hurt your eyes, or do normal sounds hurt your ears?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "You may have MENINGITIS", "score": 10}
      },
      // {
      //   "question": "Have you injured your head or been knocked out recently?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //   "You may have a CONCUSSION (also called MILD TRAUMATIC BRAIN INJURY), or a SUBDURAL HEMATOMA",
      // }, TODO
      {
        "question":
            "Do you have numbness, tingling, or weakness in the arms and legs, or do you have trouble speaking or understanding speech?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {
          "diagnosis":
              "You may be having a STROKE or a TRANSIENT ISCHEMIC ATTACK",
          "score": 10
        }
      },
      {
        "question":
            "Do you have pressure around your eyes, or do you have congestion with yellowish-green nasal discharge and a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "You may have a sinus infection or SINUSITIS.", "score": 10}
      },
      {
        "question":
            "Do you have mild to moderate pressure or tightening around your temples, and does the pain occur during times of stress or after you have been sitting in one position for a long time?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "You may have a TENSION HEADACHE", "score": 10}
      },
      {
        "question":
            "Do you have intense throbbing pain on one side of your head or temple, often with associated nausea or vomiting, and do see flashing lights or spots before the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "You may suffer from MIGRAINE headaches.", "score": 10}
      },
      {
        "question":
            "Do your headaches occur after you read, watch TV, or use a computer?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "Your headaches may be due to VISION PROBLEMS.", "score": 10}
      },
      {
        "question":
            "Do you get headaches and feel shaky and weak if you miss a meal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "Your headaches may be from HYPOGLYCEMIA", "score": 10}
      },
      {
        "question":
            "Are you trying to cut down on caffeine, alcohol, or some other drug?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "You may be suffering from withdrawal", "score": 10}
      },
      {
        "question":
            "Do you have headaches that occur daily for several days, and do you also have eye discharge and runny nose from the same side as the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": {"diagnosis": "You have CLUSTER HEADACHES.", "score": 10}
      }
    ]
  };
}
