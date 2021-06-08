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
    
    "Chest": [
      {
        "question": "Do you have severe chest pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "HYPERVENTILATION", "score": 10}]
      },
      {
        "question": "Do you have symptoms of a cold or the flu, such as fever, aches, chills, runny nose, and/or cough?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "PNEUMONIA", "score": 10}]
      },
      {
        "question": "Do you have a cough that produces greenish, yellowish, or tan mucus, a fever, and shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "PNEUMONIA", "score": 10}]
      },
      {
        "question": "Do you have a cough that produces a small amount of clear mucus, and does your chest hurt when you take a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "VIRAL BRONCHITIS", "score": 5}, {"diagnosis": "PLEURISY", "score": 5}]
      },
      {
        "question": "Are you uncomfortable from your shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "HEART ATTACK", "score": 5}, {"diagnosis": "MYOCARDIAL INFARCTION", "score": 5}]
      },
      {
        "question": "Does the pain or discomfort occur only when you swallow or after you eat?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "GASTRITIS", "score": 5}, {"diagnosis": "ESOPHAGITIS", "score": 5}]
      },
      {
        "question": "Do you have a severe, sharp pain on one side of your chest when you take a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "PNEUMOTHORAX", "score": 10}]
      },
      {
        "question": "Do you experience shortness of breath when you are physically active and/or when you’re lying down?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "CONGESTIVE HEART FAILURE", "score": 3}, {"diagnosis": "ASTHMA", "score": 3}, {"diagnosis": "PULMONARY EDEMA", "score": 3}]
      },
      {
        "question": "Do you have pressure in your chest, shortness of breath and numbness around your lips or in your hands or feet?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "HYPERVENTILATION", "score": 10}]
      },
      {
        "question": "Do you have any of the following symptoms: crushing pain or uncomfortable pressure in the middle of your chest that lasts more than a few minutes; squeezing pain in the chest or left upper arm; sweating and nausea; or severe shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "HEART ATTACK", "score": 5}, {"diagnosis": "MYOCARDIAL INFARCTION", "score": 5}]
      },
      {
        "question": "Do you have a painful, blistering rash on your chest or back?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "SHINGLES", "score": 10}]
      },
      {
        "question": "Do you have back pain that radiates around to the front of your chest?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "COSTOCHONDRITIS", "score": 5}, {"diagnosis": "FRACTURE", "score": 5}]
      }
    ],

    "Chest Pain, Chronic": [
      {
        "question": "Do you have shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "POSTHERPETIC NEURALGIA", "score": 10}]
      },
      {
        "question": "Do you have episodes of wheezing and a cough that won’t go away?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "ASTHMA", "score": 10}]
      },
      {
        "question": "Does your chest ache along the edges of your breastbone, and does your pain get worse when you cough or take a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "COSTOCHONDRITIS", "score": 10}]
      },
      {
        "question": "Do physical activities, emotional stress, or extreme temperatures cause a feeling of pressure under the breastbone?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "ANGINA", "score": 10}]
      },
      {
        "question": "Do you have fullness and pain under your breastbone or in the upper right side of your abdomen after eating a greasy or fatty meal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "GALLBLADDER", "score": 10}]
      },
      {
        "question": "Do you have a burning sensation in your chest that either feels worse when you eat or drink, or feels better when you eat or drink, but gets worse a few hours later?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "ULCER", "score": 15}, 
                          {"diagnosis": "IRRITATION OF THE ESOPHAGUS", "score": 15}, 
                          {"diagnosis": "SPASM", "score": 15}, 
                          {"diagnosis": "HIATAL HERNIA", "score": 15}]
      },
      {
        "question": "Do you have stinging or burning pain at the same location where you had a recent case of SHINGLES?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "SHINGLES", "score": 10}]
      },
      {
        "question": "Do you have a tight feeling in your chest and on ongoing cough that produces a lot of mucus? Does this usually occur for 2-3 months around the same time each year over the past 1-2 (or more) years?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "CHRONIC BRONCHITIS", "score": 10}]
      },
      {
        "question": "Do you have an ongoing, mild cough, has your shortness of breath been increasing slowly for years, and have you been a smoker or been exposed to dust and fumes where you work?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "EMPHYSEMA", "score": 10}]
      },
      {
        "question": "Do you have a fever, chills, or night sweats, or are you coughing up bloody mucus?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "", "score": 10}]
      }
    ],

    "Chest Pain in Infants and Children": [
      {
        "question": "Does your child have a fever, a cough that produces mucus, and shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "BRONCHITIS", "score": 15}, 
                          {"diagnosis": "PNEUMONIA", "score": 15}]
      },
      {
        "question": "Does your child have a tight cough, wheezing, and shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "BRONCHIOLITIS", "score": 15}, 
                          {"diagnosis": "ASTHMA OF THE ESOPHAGUS", "score": 15}]
      },
      {
        "question": "Does your child have a dry cough and a sharp pain in the chest when he or she takes a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "PLEURISY", "score": 10}]
      },
      {
        "question": "Does your child have sudden, sharp pain in one side of the chest with sudden shortness of breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "PNEUMOTHORAX", "score": 10}]
      },
      {
        "question": "Does your child have a high fever, a very sore throat, and trouble breathing and/or swallowing? They may also be sitting forward resting on one arm (“tripoding.”)",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "EPIGLOTTITIS", "score": 10}]
      },
      {
        "question": "Does your child have pain and tenderness in the front of the chest, along the border of the breastbone and ribs, and does it get worse when your child coughs or takes a deep breath?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "COSTOCHONDRITIS", "score": 10}]
      }
    ],

    "Thighs" : [
      {
        "question": "Do you have pain in your leg or ankle after a fall or injury, is there a deformity of your leg, or are you unable to stand or put pressure on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "BROKEN BONE", "score": 10}],
      },
      {
        "question": "Do you have a tender red area or a red streak anywhere on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "CELLULITIS", "score": 10}]
      },
      {
        "question": "Do you have swelling in both of your feet or lower legs?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "EDEMA", "score": 10}]
      }
    ],

    "Calves" : [
      {
        "question": "Do you have pain in your leg or ankle after a fall or injury, is there a deformity of your leg, or are you unable to stand or put pressure on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "BROKEN BONE", "score": 10}],
      },
      {
        "question": "Do you have pain or mild swelling in the front or inner part of your lower leg that may have developed soon after starting or increasing physical activity, such as running, jumping or marching?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "SHIN SPLINTS", "score": 5}, {"diagnosis": "inflammation of the ligaments", "score": 5}]
      },
      {
        "question": "Do you have a tender red area or a red streak anywhere on your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "CELLULITIS", "score": 10}]
      },
      {
        "question": "Do your calves ache after walking, and is the pain relieved with rest?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "PERIPHERAL ARTERIAL DISEASE (PAD)", "score": 10}]
      },
      {
        "question": "Do you have swelling in both of your feet or lower legs?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "EDEMA", "score": 10}]
      },
      {
        "question": "Is there bruising or swelling of your calf?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "ACHILLES TENDON", "score": 10}]
      },
      {
        "question": "Do you have pain, swelling, redness, or warmth in your calf? Is one calf bigger than the other?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "DEEP VENOUS THROMBOSIS", "score": 10}]
      },
    ],

    "Knees": [
      {
        "question": "Did your knee pain or swelling begin after a fall, twisting injury, or after your knee was hit by an object or person?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "FRACTURED", "score": 20},
                          {"diagnosis": "TORN some LIGAMENTS", "score": 20}]
      },
      {
        "question": "Is your knee deformed?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "FRACTURED", "score": 5},
                          {"diagnosis": "TORN some LIGAMENTS", "score": 5}]
      },
      {
        "question": "Is your kneecap swollen, tender, and warm, and do you have pain with activity?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "FRACTURED", "score": 5},
                          {"diagnosis": "PREPATELLAR BURSITIS", "score": 5}]
      },
      {
        "question": "Is your knee tender and swollen, and does the pain get worse after sitting for a long time or after using the stairs?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "TORN CARTILAGE/MENISCUS", "score": 3},
                          {"diagnosis": "TORN LIGAMENT", "score": 3},
                          {"diagnosis": "CHONDROMALACIA PATELLAE", "score": 3}]
      },
      {
        "question": "Do you have a sharp pain behind your knee and is it painful to extend (stretch out straight) your leg?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "TORN HAMSTRING MUSCLE", "score": 10}]
      },
      {
        "question": "Do you still have a grinding feeling in your joint or does it ever lock (i.e., you can’t flex or extend the joint or it is stuck in one of those positions), even after your knee pain is better?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "TORN CARTILAGE/TORN MENISCUS", "score": 10}]
      },
      {
        "question": "Is your knee swollen and/or red?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "", "score": -1}]
      },
      {
        "question": "Do you have a fever along with swollen and/or red joints?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "RHEUMATOID ARTHRITIS", "score": 3},
                          {"diagnosis": "RHEUMATIC FEVER", "score": 5},
                          {"diagnosis": "SEPTICE JOINT INFECTION", "score": 5}]
      },
      {
        "question": "Has your knee become tender over many months or years and does the pain get worse when the weather changes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "OSTEOARTHRITIS", "score": 10}]
      },
      {
        "question": "Is the back of your knee swollen or tender?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "ARTHRITIS", "score": 10}]
      },
      {
        "question": "Are you between 12 and 18 years, and do you have a pain on the front of your knee below your kneecap that gets worse with activities like running or jumping?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": " OSGOOD-SCHLATTER DISEASE", "score": 10}]
      },
      {
        "question": "Are you younger than 18 years, and do you have knee pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "If there is no discernible issue at the knee, you may have a hip problem that feels like knee pain.", "score": 10}]
      }
    ],

    "Feet": [
      {
        "question":
            "Did you begin to have pain and/or swelling after the ankle was hit or after a fall or a twisting injury?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "Sprain", "score": 5}]
      },
      {
        "question":
            "Is the ankle significantly swollen, and is the pain so intense that you can’t put weight on that foot?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "Sprain", "score": 5}]
      },
      {
        "question":
            "Is the ankle swollen and bruised, and can you still put weight on that foot?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "Sprained ankle", "score": 10}]
      },
      {
        "question":
            "Do you have swelling, stiffness (especially in the morning), and/or pain that comes and goes in both ankles?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "RHEUMATOID ARTHRITIS or OSTEOARTHRITIS",
          "score": 10
        }]
      },
      {
        "question":
            "Do you have a fever, and is one or more of your joints painful, swollen, and red?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "RHEUMATIC FEVER", "score": 10}]
      },
      {
        "question":
            "Did the pain start suddenly, and is it painful when clothing or bedding rubs against your ankle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "GOUT", "score": 10}]
      },
      {
        "question":
            "Do you usually feel pain before or during a change in the weather, and/or are you experiencing swelling, stiffness, and pain that gets worse during or after you use your ankle?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "TUBERCULOSIS", "score": 15}, 
                          {"diagnosis": "FUNGAL INFECTION", "score": 15}, 
                          {"diagnosis": "PNEUMONIA", "score": 15}, 
                          {"diagnosis": "LUNG CANCER", "score": 30}]
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
        "onYesResponse": [{"diagnosis": "DETACHED RETINA", "score": 10}]
      },
      {
        "question":
            "Is your eye red, and do you have severe eye pain, or has your vision suddenly decreased or become cloudy?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "ACUTE GLAUCOMA", "score": 10}]
      },
      {
        "question":
            "Are you experiencing flu-like symptoms, such as fever, fatigue, muscle aches, and pain in one or both temples?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "TEMPORAL ARTERITIS", "score": 10}]
      },
      {
        "question":
            "Do you have thick nasal drainage and pain or pressure on your forehead and behind your eyes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "SINUSITIS", "score": 10}]
      },
      {
        "question":
            "Are your eyes red or sensitive to light, are you experiencing eye pain, and do you see dark, floating spots?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "IRITIS", "score": 10}]
      },
      {
        "question":
            "Do you have diabetes, and have you noticed any changes in your vision?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "TOOMUCHGLUCOSE", "score": 10}]
      },
      {
        "question":
            "Are your eyes red, itchy, or swollen, or is there a bite-like swelling on one of your eyelids?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "ALLERGY", "score": 5}, {"diagnosis": "INSECT BITE", "score": 5}] //TODO
      },
      {
        "question":
            "Do you have a fever, and is your eyelid swollen, red, and/or tender to the touch?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "PERIORBITAL CELLULITIS", "score": 10}]
      },
      // {
      //   "question":
      //       "Is there a firm, painful lump in the eyelid or a tender ‘pimple’ on the edge of the eyelid?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse": "CHALAZION or HORDEOLUM or STYE", //TODO
      // },
      {
        "question":
            "Is your eye red, is your vision blurry, and do you feel like you have sand in your eye (foreign body sensation)?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "SCRATCHED CORNEA", "score": 10}]
      },
      {
        "question":
            "Is the white of the eye pink, red, or irritated, and is there any secretion or mucus coming from the eye? Did you wake up with your eyelids sealed shut?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "CONJUNCTIVITIS", "score": 10}]
      },
      {
        "question":
            "Do you have a burning sensation in the eye, is the eye red and itchy, and is the skin around the eye scaling?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "BLEPHARITIS", "score": 10}]
      },
      // {
      //   "question": "Do you wear contact lenses, and do you have eye pain?",
      //   "answerType": AnswerType.MULTIPLE_CHOICE,
      //   "answerChoices": ["No", "Yes"],
      //   "onYesResponse":
      //       "INFECTION, CORNEAL ABRASION, or a scratch caused by your contact lens",
      // } TODO
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
        "onYesResponse": [{"diagnosis": "OTITIS", "score": 10}]
      },
      {
        "question":
            "Do you have redness and swelling of the outer ear and the surrounding skin?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "Self Care - See a doctor right away",
          "score": 10
        }]
      },
      {
        "question":
            "Do you have headache-type pain and redness behind your ear or tenderness when you touch the bone behind your ear?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "MASTODITIS", "score": 10}]
      },
      {
        "question":
            "Do you have thick pus-filled (white) or bloody drainage from the ear canal that started after a sharp, sudden pain?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "RUPTURED EARDRUM", "score": 10}]
      },
      {
        "question":
            "Is your ear swollen, and does it itch or hurt when you pull on your ear or earlobe?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "otitis externa", "score": 10}]
      },
      {
        "question":
            "Does your jaw joint “crack” when you chew or open your mouth, or do you feel tenderness in your jaw when chewing?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "temporomandibular joint syndrome",
          "score": 10
        }]
      },
      {
        "question":
            "Do you hear/feel fluid in your ear, and feel pressure or stuffiness that can’t be cleared with coughing, yawning, or swallowing, and do you have cold or flu symptoms?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "BLOCKED EUSTACHIAN TUBE", "score": 10}]
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
        "onYesResponse": [{"diagnosis": "BAROTRAUMA", "score": 10}]
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
        "onYesResponse": [{"diagnosis": "SEROUS OTITIS", "score": 10}]
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
        "onYesResponse": [{"diagnosis": "CAULIFLOWER EAR", "score": 10}]
      }
    ],
    
    "Shoulders": [
      {
        "question":
            "Did you hit, injure, or fall on your upper arm or shoulder recently?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "Dislocated Shoulder or Subluxed",
          "score": 5
        }]
      },
      {
        "question":
            "Did you feel your shoulder pop out of place and/or pop back into place?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "Dislocated Shoulder or Subluxed",
          "score": 10
        }]
      },
      {
        "question": "Is your upper arm swollen or deformed?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "HUMERUS may be FRACTURED or Dislocated",
          "score": 10
        }]
      },
      {
        "question": "Is your collarbone tender, or do you have a bump on it?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "CLAVICLE (collarbone) may be FRACTURED.",
          "score": 10
        }]
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
        "onYesResponse": [{
          "diagnosis": "TORN ROTATOR CUFF or SHOULDER INSTABILITY.",
          "score": 10
        }]
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
        "onYesResponse": [{"diagnosis": "RHEUMATIC FEVER", "score": 10}]
      },
      {
        "question":
            "Do you have redness and swelling in more than one joint, including your shoulder?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "RHEUMATOID ARTHRITIS,", "score": 10}]
      },
      {
        "question":
            "Do you feel pain when you move your arm above the level of your shoulder, but there’s no swelling or redness?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis":
              "You may have IMPINGEMENT, BURSITIS or ROTATOR CUFF SYNDROME.",
          "score": 10
        }]
      },
      {
        "question":
            "Do you have increasing stiffness and inability to move your shoulder? Do you also have diabetes?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis":
              "You may have ADHESIVE CAPSULITIS, also called a FROZEN SHOULDER",
          "score": 10
        }]
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
        "onYesResponse": [{"diagnosis": "FRACTURED SPINE.", "score": 10}]
      },
      {
        "question": "Do you have pain when twisting, bending, or even sitting?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "MUSCLE SPASM", "score": 10}]
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
        "onYesResponse": [{
          "diagnosis": "PREGNANCY causes stretching of the tendons ",
          "score": 10
        }]
      },
      {
        "question":
            "Is the pain centered in the lower spine, and do you have pain down your leg? Does bending forward while walking seem to make it feel better?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "You may have a HERNIATED DISC or SPINAL STENOSIS",
          "score": 10
        }]
      },
      {
        "question":
            "Do you have back pain that wakes you up at night? Have you had unintentional weight loss?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis":
              "You may have a serious condition, including certain types of CANCER",
          "score": 10
        }]
      }
    ],
    "Head Front": [
      {
        "question":
            "Do you have a fever, cold symptoms, nausea, vomiting, or diarrhea?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{
          "diagnosis": "You may have the COLD or the FLU",
          "score": 10
        }]
      },
      {
        "question":
            "Do you have a severe headache, stiff neck, vomiting, and does normal light hurt your eyes, or do normal sounds hurt your ears?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "You may have MENINGITIS", "score": 10}]
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
        "onYesResponse": [{
          "diagnosis":
              "You may be having a STROKE or a TRANSIENT ISCHEMIC ATTACK",
          "score": 10
        }]
      },
      {
        "question":
            "Do you have pressure around your eyes, or do you have congestion with yellowish-green nasal discharge and a fever?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "You may have a sinus infection or SINUSITIS.", "score": 10}]
      },
      {
        "question":
            "Do you have mild to moderate pressure or tightening around your temples, and does the pain occur during times of stress or after you have been sitting in one position for a long time?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "You may have a TENSION HEADACHE", "score": 10}]
      },
      {
        "question":
            "Do you have intense throbbing pain on one side of your head or temple, often with associated nausea or vomiting, and do see flashing lights or spots before the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "You may suffer from MIGRAINE headaches.", "score": 10}]
      },
      {
        "question":
            "Do your headaches occur after you read, watch TV, or use a computer?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "Your headaches may be due to VISION PROBLEMS.", "score": 10}]
      },
      {
        "question":
            "Do you get headaches and feel shaky and weak if you miss a meal?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "Your headaches may be from HYPOGLYCEMIA", "score": 10}]
      },
      {
        "question":
            "Are you trying to cut down on caffeine, alcohol, or some other drug?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "You may be suffering from withdrawal", "score": 10}]
      },
      {
        "question":
            "Do you have headaches that occur daily for several days, and do you also have eye discharge and runny nose from the same side as the headache?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["No", "Yes"],
        "onYesResponse": [{"diagnosis": "You have CLUSTER HEADACHES.", "score": 10}]
      }
    ]
  };

}
