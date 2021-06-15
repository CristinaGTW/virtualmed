class DiagnosisOverview {
  static const diagnoses = {
    // For Chest:
    "HYPERVENTILATION": {
      "overview":
          "Hyperventilation occurs when you over breathe, i.e. if you breathe in excess of your body’s needs.",
      "try": [
        "Wear loose clothing",
        "Pull your shoulders down to your feet and stop",
        "Let your upper chest relax, then take a slightly deeper breath in through your nose, letting your tummy swell forward and out.",
        "Let the air sigh out as you breathe out.",
        "Try to get a steady rhythm, taking the same size of breath each time"
      ],
      "avoid": ["A", "B", "C"]
    },
    "PNEUMONIA": {
      "overview":
          "Pneumonia is swelling (inflammation) of the tissue in one or both lungs. It's usually caused by a bacterial infection.",
      "try": [
        "Get plenty of rest",
        "Take antibiotics if the pneumonia is likely to be caused by a bacterial infection",
        "Drinking plenty of fluids"
      ],
      "avoid": ["Do not eat Fried Foods"]
    },
    "VIRAL BRONCHITIS": {
      "overview":
          "Acute bronchitis is a contagious viral infection that causes inflammation of the bronchial tubes.",
      "try": [
        "Drink fluids but avoid caffeine and alcohol.",
        "Get plenty of rest.",
        "Take over-the-counter pain relievers to reduce inflammation, ease pain, and lower your fever.",
        "Increase the humidity in your home or use a humidifier."
      ],
      "avoid": ["Smoking"]
    },
    "PLEURISY": {
      "overview":
          "Pleurisy is a medical condition that affects the lining of your lungs and chest. The lining can become inflamed or irritated.",
      "try": [
        "Medication can ease the pain of pleurisy. A person might benefit from taking nonsteroidal anti-inflammatory drugs, or NSAIDs, such as ibuprofen (Advil).",
        "For severe cases, doctors may prescribe pain and cough medicines, including codeine-based cough syrup.",
        "Resting in certain positions can help a person feel more comfortable. Many people find that lying on the side of the chest that hurts can help ease the pain."
      ],
      "avoid": [
        "You can’t prevent pleurisy, but you can reduce your risk by promptly treating conditions that may cause it. You should also quit smoking tobacco, using electronic cigarettes, and smoking marijuana. If you don’t smoke, don’t start."
      ]
    },
    "HEART ATTACK": {
      "overview":
          "A heart attack is when part of the heart muscle is cut off from oxygen. If the oxygen isn’t restored soon, a heart attack occurs.",
      "try": [
        "Dial 911 Do not have someone else drive you to the hospital. Do not try to drive yourself.",
        "After calling for help, take 1 uncoated adult aspirin (325 mg) or 4 uncoated baby aspirins (81 mg each).",
        "If you are alone and are able, unlock your door to let emergency personnel enter your home.",
        "Sit in a comfortable chair, wait for help and keep a phone near you."
      ],
      "avoid": ["Smoking."]
    },
    "GASTRITIS": {
      "overview":
          "Gastritis is inflammation of the lining of the stomach. It may occur as a short episode or may be of a long duration. ",
      "try": [
        "Eating smaller, more frequent meals",
        "Avoiding or cutting down on alcohol"
      ],
      "avoid": [
        "Avoiding foods that can irritate the stomach, such as spicy, acidic or fried foods",
        "Quitting smoking if you smoke"
      ]
    },
    "ESOPHAGITIS": {
      "overview":
          "Esophagitis is inflammation that may damage tissues of the esophagus, the muscular tube that delivers food from your mouth to your stomach.",
      "try": [
        "Take small bites and chew your food thoroughly.",
        "Include more soft foods such as applesauce, cooked cereals, mashed potatoes, custards, puddings and high-protein shakes in your diet."
      ],
      "avoid": [
        "Avoid spicy foods such as those with pepper, chili powder, curry and nutmeg.",
        "Avoid acidic foods and beverages such as tomatoes, oranges, grapefruits and their juices. Instead, try nectars and imitation fruit drinks with vitamin C.",
        "Avoid alcohol and tobacco."
      ]
    },
    "PNEUMOTHORAX": {
      "overview":
          "A collapsed lung occurs when air gets inside the chest cavity (outside the lung) and creates pressure against the lung. Also known as pneumothorax, collapsed lung is a rare condition that may cause chest pain and make it hard to breathe.",
      "try": [
        "A collapsed lung requires immediate medical care.",
        "Stop smoking."
      ],
      "avoid": [
        "Avoid or limit activities with drastic changes in air pressure (scuba diving and flying)."
      ]
    },
    "CONGESTIVE HEART FAILURE": {
      "overview":
          "Heart failure means that the heart is unable to pump blood around the body properly.",
      "try": [
        "Lifestyle changes – including eating a healthy diet, exercising regularly"
      ],
      "avoid": ["Smoking"]
    },
    "ASTHMA": {
      "overview":
          "Asthma is a condition in which your airways narrow and swell and may produce extra mucus.",
      "try": [
        "using your preventer inhaler or tablets every day",
        "Exercising regularly",
        "eating healthily"
      ],
      "Avoid": ["Smoking"],
    },
    "SHINGLES": {
      "overview":
          "Shingles is an infection that causes a painful rash. Get advice from 111 as soon as possible if you think you have it.",
      "try": [
        "Take paracetamol to ease pain",
        "Keep the rash clean and dry to reduce the risk of infection",
        "Wear loose-fitting clothing",
        "Use a cool compress (a bag of frozen vegetables wrapped in a towel or a wet cloth) a few times a day"
      ],
      "avoid": [
        "Do not let dressings or plasters stick to the rash",
        "Do not use antibiotic cream – this slows healing"
      ],
    },
    "COSTOCHONDRITIS": {
      "overview":
          "Costochondritis is the medical term for inflammation of the cartilage that joins your ribs to your breastbone (sternum). This area is known as the costochondral joint.",
      "try": [
        "Painkillers, such as paracetamol, can be used to ease mild to moderate pain.",
        "Taking a type of medication called a non-steroidal anti-inflammatory drug (NSAID), such as ibuprofen and naproxen, 2 or 3 times a day can also help control the pain and swelling. ",
        "Aspirin is also a suitable alternative, but should not be given to children under 16 years old.",
        "These medicines are available from pharmacies without a prescription, but you should make sure you carefully read the instructions that come with them before use.",
        "NSAIDs are not suitable for people with certain health conditions, including: asthma, stomach ulcers, high blood pressure, and kidney or heart problems."
      ],
      "avoid": [
        "A particular posture, such as lying down",
        "Pressure on your chest, such as wearing a seatbelt or hugging someone",
        "Deep breathing, coughing and sneezing",
        "Physical activity"
      ],
    },
    "FRACTURE": {
      "overview":
          "Accidents happen, whether from a car accident, playing sports, climbing, or a bad fall. If you think you have a broken bone, it’s important to get the best medical care available.\n Once you receive treatment, healing the bone takes time. If you have a cast or splint, there are steps you can take to speed up the healing process and keep your body healthy and strong while you recuperate.",
      "try": [
        "Seek immediate medical attention!",
        "Go to an orthopedic urgent care clinic if there is one close to you. It is a big time-saver when there is a possibility of a fracture or other injury that requires immediate care. In addition to having on-site imaging equipment, they offer the ability to see an orthopedic (musculoskeletal) specialist immediately, instead of having to wait for a referral – or having to wait for hours in an emergency room.",
        "Take the pain medicine your doctor prescribed or recommended. If you have a broken bone, keep in mind that you may experience some pain in the first few days.",
        "Rest and elevate the limb if there is swelling. If there is a lot of swelling in your limb, the doctor may send you home with a splint until the swelling subsides.",
        "Make sure the cast isn’t too tight on your or your child’s fingers and toes. If it is too tight, it can cause extremities to feel numb or turn bluish or purple.",
        "Blow cool air through the opening at the top of the cast from a hair dryer or a fan in order to relieve an itch.",
        "Keep the cast outside the bathtub while you bathe. If the cast does get wet, call your orthopedist in case you need to come in for a new one.",
        "To be patient. Broken bones heal in their own time, and your orthopedist will be there for you while you get better."
      ],
      "avoid": [
        "Diagnose or treat a broken bone yourself. If you do, the bone could heal incorrectly, or an infection could develop – which would make the problem much worse than if you’d just had it treated properly by a physician.",
        "Scratch an itch that’s inside the cast by sticking a pen or other object inside. If you do, you could cut the skin, which is already vulnerable due to its lack of access to normal levels of oxygen and air.",
        "Let your cast get wet."
      ],
    },
    "POSTHERPETIC NEURALGIA": {
      "overview":
          "Shingles is an infection that causes a painful rash. Get advice from 111 as soon as possible if you think you have it.",
      "try": [
        "Take paracetamol to ease pain",
        "Keep the rash clean and dry to reduce the risk of infection",
        "Wear loose-fitting clothing",
        "Use a cool compress (a bag of frozen vegetables wrapped in a towel or a wet cloth) a few times a day"
      ],
      "avoid": [
        "Do not let dressings or plasters stick to the rash",
        "Do not use antibiotic cream – this slows healing"
      ],
    },
    "ANGINA": {
      "overview":
          "Angina is chest pain caused by reduced blood flow to the heart muscles. It's not usually life threatening, but it's a warning sign that you could be at risk of a heart attack or stroke. With treatment and healthy lifestyle changes, it's possible to control angina and reduce the risk of these more serious problems.",
      "try": [
        "You'll probably need to take several different medicines for the rest of your life. You may be given medicine to: treat attacks when they happen (only taken when needed), prevent further attacks, and reduce the risk of heart attacks and strokes",
        "If medicines are not suitable or do not help, an operation to improve blood flow to your heart muscles may be recommended.",
        "If it's well controlled, there's no reason why you cannot have a largely normal life with angina. You can usually continue to do most of your normal activities. One of the most important things you'll need to do is to make healthy lifestyle changes.",
        "This can help reduce your risk of heart attacks and strokes."
      ],
      "avoid": [
        "An unhealthy diet",
        "A lack of exercise",
        "Drinking alcohol",
        "Smoking"
      ],
    },
    "GALLBLADDER": {
      "overview":
          "It’s not uncommon for people to need to have their gallbladder removed at some point. This is partly because it’s possible to live a long, full life without a gallbladder. Gallbladder removal is called cholecystectomy. You can have your gallbladder removed for several reasons, including: infections, inflammation(called cholecystitis), gallstones, gallbladder polyp",
      "try": [
        "Limit fat intake",
        "Try to avoid foods that contain more than 3 grams of fat in a single serving. Pay special attention to the labels on processed meats, dairy products, sauces, and toppings, which sometimes contain more fat than you’d think they would."
      ],
      "avoid": [
        "Sausage",
        "Beef",
        "Fried foods",
        "Chips",
        "Chocolate",
        "Full-fat milk, yogurt, or cheese",
        "Cream",
        "Skin-on poultry",
        "Foods that contain a lot of vegetables, peanut, canola, or olive oil"
      ],
    },
    "ULCER": {
      "overview":
          "Ulcers are sores on the lining of your stomach or small intestine. Sores also could be on your esophagus (throat). Most ulcers are located in the small intestine. These ulcers are called duodenal ulcers. Stomach ulcers are called gastric ulcers. Ulcers in the throat are called esophageal ulcers.",
      "try": [
        "Stop smoking. Heavy smokers are more likely to develop duodenal ulcers than nonsmokers.",
        "Practice moderation. Heavy consumption of alcohol and has been shown to contribute to the development of ulcers, so keep your intake to a minimum.",
        "Take nonsteroidal anti-inflammatory drugs (NSAIDS including aspirin and ibuprofen) with food, as this may decrease your risk of irritating the lining of your stomach",
        "Learn how to control your stress levels. Regular exercise and mind-body relaxation techniques (such as guided imagery and yoga or tai chi) are often helpful."
      ],
      "avoid": [
        "Avoid foods that irritate your stomach.",
        "Use common sense: If it upsets your stomach when you eat it, avoid it.",
        "Everyone is different, but spicy foods, citrus fruits, and fatty foods are common irritants."
      ],
    },
    "IRRITATION OF THE ESOPHAGUS": {
      "overview":
          "When irritation occurs in the throat or lower chest when eating certain foods or following a medical procedure, an easily digestible esophageal soft food diet may be necessary to make eating easier. \n Food passes from our mouths to our stomachs through a tubelike organ called the esophagus. A burning sensation in the lower chest or pain after swallowing and the feeling that food gets 'stuck' in the throat may be caused by esophagitis, which is an irritation or inflammation along the lining of the esophagus. \n Acid reflux, hiatal hernias, vomiting, complications from radiation therapy, and certain oral medications are among the reasons the esophagus can develop inflamed tissue. Esophagitis can usually heal without intervention, but to aid in the recovery, eaters can adopt what's known as an esophageal, or soft food, diet. \nThe goal of this kind of diet is to make eating less painful and to keep food from lingering in the esophagus and causing irritation.",
      "try": [
        "Take small bites of food and chew foods well.",
        "Sip fluids when taking solids at meals and snacks to moisten foods.",
        "Stop eating when you start to feel full.",
        "Eat slowly in a relaxed atmosphere.",
        "Choose decaffeinated coffee, tea, or caffeine-free soft drinks.",
        "Sit upright when eating. Remain in a sitting position for at least 45-60 minutes after eating.",
        "Eat small, frequent meals and snacks."
      ],
      "avoid": [
        "Tough meats, fresh “doughy” bread or rolls, hard bread crust, and abrasive foods.",
        "Eating for 3 hours before bedtime."
      ],
    },
    "SPASM of the muscles of the esophagus": {
      "overview":
          "Esophageal spasms are painful contractions within the muscular tube connecting your mouth and stomach (esophagus). Esophageal spasms can feel like sudden, severe chest pain that lasts from a few minutes to hours. Some people may mistake it for heart pain (angina).",
      "try": [
        "Suck a peppermint lozenge. Peppermint oil is a smooth muscle relaxant and might help ease esophageal spasms. Place the peppermint lozenge under your tongue.",
        "Choose food that is warm or cool. Let foods and drinks that are very hot or very cold sit for a bit before eating or drinking them.",
        "Making lifestyle changes",
        "Trying natural remedies"
      ],
      "avoid": [
        "Your triggers. Make a list of foods and beverages that cause your esophageal spasms.",
        "Smoking",
        "Alcohol, especially red wine",
        "Eating too close to bedtime or before laying down",
        "Constrictive clothing"
      ],
    },
    "HIATAL HERNIA": {
      "overview":
          "A hiatus hernia is when part of your stomach moves up into your chest. It's very common if you're over 50. It does not normally need treatment if it's not causing you problems.",
      "try": [
        "Change your eating habits, for example, eat smaller, more frequent meal",
        "Buy medicines from the pharmacy (ask the pharmacist what you should take)"
      ],
      "avoid": [
        "If you smoke, try to give up, as it can irritate your digestive system and make your symptoms worse."
      ]
    },
    "CHRONIC BRONCHITIS": {
      "overview":
          "Bronchitis is an infection of the main airways of the lungs (bronchi), causing them to become irritated and inflamed.",
      "try": ["Eating a healthy diet", "regular moderate exercise"],
      "avoid": ["Avoiding smoking"]
    },
    "EMPHYSEMA": {
      "overview":
          "Empyema is the medical term for pockets of pus that have collected inside a body cavity.",
      "try": ["Stop Smoking"],
      "avoid": ["Drink too much alcohol or take a lot of recreational drugs"]
    },

    // diagnoses for Neck :
    "MONONUCLEOSIS": {
      "overview":
          "Mononucleosis (often called “mono”) is a contagious illness. It’s usually caused by the Epstein-Barr virus. It’s spread through saliva. For this reason, it’s sometimes called “kissing disease.” It’s most common in teens and young adults. However, anyone at any age can get it.",
      "try": [
        "The best thing you can do to avoid it is to stay away from anyone you know who has it."
      ],
      "avoid": ["Don’t kiss them or share utensils or other personal items."]
    },
    "STREP": {
      "overview":
          "Strep throat is an infection caused by bacteria. It is called “strep” because the bacteria that causes the infection is called streptococcus.",
      "try": [
        "Take ibuprofen or acetaminophen to relieve pain and reduce fever. Children should not take aspirin.",
        "Gargle with warm salt water (1/4 teaspoon of salt in 1 cup [8 ounces] of warm water).",
        "Adults and older children can suck on throat lozenges, hard candy, pieces of ice, or popsicles.",
        "Eat soft foods (such as yogurt and applesauce) and drink cool drinks or warm liquids (such as broths, soups, and tea).",
        "Get plenty of rest.",
        "Sleep helps your body fight infection.",
        "Drink plenty of water. ",
        "This helps keep your throat lubricated and helps prevent dehydration.",
        "Avoid acidic or spicy foods and drinks (such as orange juice and peppers)."
      ],
      "avoid": [
        "Strep throat is very contagious. It can be hard to protect yourself when you are around people who are infected with strep throat.",
        "Try to avoid people who have strep, when possible. If you must be around someone who has strep throat, be sure to wash your hands frequently."
      ]
    },
    "VIRAL SORE THROAT": {
      "overview":
          "A sore throat means that your throat hurts. It feels irritated or scratchy. You may feel mild discomfort or a burning pain. A sore throat may feel worse when you swallow. Possible complications from a sore throat include ear and sinus infections.",
      "try": [
        "Avoid touching your eyes or mouth.",
        "Cover your mouth when coughing or sneezing."
      ],
      "avoid": [
        "The best way to avoid a sore throat is to avoid getting sick.",
        "Avoid catching or spreading the viruses and bacteria that cause a sore throat."
      ]
    },
    "INFECTED LYMPH NODES": {
      "overview":
          "When you’re sick and your lymph nodes send out disease-fighting cells and compounds, they may become inflamed or painful.",
      "try": [
        "Your doctor is likely to advise using a fever-reducing painkiller, such as ibuprofen, along with a warm compress.",
        "Elevating the swollen area can also help relieve inflammation."
      ],
      "avoid": [""]
    },
    "VIRAL ILLNESS": {
      "overview":
          "For most viral infections, treatments can only help with symptoms while you wait for your immune system to fight off the virus. Antibiotics do not work for viral infections. There are antiviral medicines to treat some viral infections",
      "try": [""],
      "avoid": [""]
    },
    "GERMAN MEASLES (RUBELLA)": {
      "overview":
          "Rubella is a contagious disease caused by a virus. It can lead to serious complications, especially for unborn babies.",
      "try": [
        "Most cases of German measles are treated at home.",
        "Your doctor may tell you to rest in bed and to take acetaminophen (Tylenol), which can help relieve discomfort from fever and aches.",
        "They may also recommend that you stay home from work or school to prevent spreading the virus to others."
      ],
      "avoid": [""]
    },
    "MUMPS": {
      "overview":
          "Mumps is a virus. It causes the glands around your neck (between your ear and jaw) to swell. These glands make the saliva (spit) that helps you chew and swallow food.",
      "try": [
        "Place ice or heat packs on swollen cheeks.",
        "Take acetaminophen for pain.",
        "Take ibuprofen for pain and swelling. Never give aspirin to children or teenagers 18 old or younger. This increases the risk of Reye’s syndrome. Reye’s syndrome is a serious illness that can lead to death.",
        "Drink lots of fluids.",
        "Eat soft foods that don’t require much chewing.",
        "Gargle with warm salt water several times a day.",
        "Try popsicles to soothe your throat."
      ],
      "avoid": [
        "Avoid acidic foods or foods that make your mouth water, such as citrus fruits.",
        "Avoid public places and close contact for at least five days after symptoms appear. This is when you are the most contagious."
      ]
    },
    "THYROGLOSSAL DUCT CYST": {
      "overview":
          "A thyroglossal duct cyst happens when your thyroid, a large gland in your neck that produces hormones, leaves behind extra cells while it’s forming during your development in the womb. These extra cells can become cysts. ",
      "try": [
        "If your cyst has a bacterial or viral infection, your doctor will prescribe antibiotics to help treat the infection."
      ],
      "avoid": [""]
    },
    "ABSCESS": {
      "overview":
          "An abscess is a painful collection of pus, usually caused by a bacterial infection. Abscesses can develop anywhere in the body."
              "",
      "try": [
        "Maintaining a healthy, balanced diet",
        "Losing weight if you're overweight or obese",
        "Washing your hands regularly"
      ],
      "avoid": ["Smoking"]
    },
    "THYROIDITIS": {
      "overview":
          "Thyroiditis refers to a group of disorders that cause inflammation of the thyroid. Your thyroid is the gland located in the front of your neck below your Adam’s apple. Thyroiditis refers to a group of disorders that cause inflammation of the thyroid. Your thyroid is the gland located in the front of your neck below your Adam’s apple.",
      "try": [
        "Symptoms usually get better when the infection is treated with antibiotics."
      ],
      "avoid": ["Most cases of thyroiditis cannot be prevented."]
    },

    //"Glutes": Buttock, Hip & Groin
    "PIRIFORMIS SYNDROME": {
      "overview":
          "Piriformis syndrome is compression of the sciatic nerve. It causes pain deep in the buttocks which radiates down into the leg. Here we explain the symptoms, causes, treatment, and exercises for preventing and treating Piriformis syndrome.",
      "try": [
        "First reducing pain by relaxing the muscle through ice or heat, electrotherapy, massage, and stretching.",
        "Then when pain allows strengthening the muscle to help prevent the injury recurring."
      ],
      "avoid": [
        "Activities which make symptoms worse. This is likely to include running and other weight-bearing activities."
      ]
    },
    "MYOFASCIAL PAIN IN BUTTOCK MUSCLES": {
      "overview":
          "Myofascial pain or trigger points in the Gluteus medius and Piriformis muscles can cause pain in the buttock area. A trigger point is a tiny localised knot in the muscle. It will cause pain in the buttock or lower back which may spread to other areas. Movement around the hip will be difficult, but this can be helped by stretching and massage.",
      "try": [
        "Begin a comprehensive stretching routine for the muscles of the lower back, hip, and groin.",
        "See a sports injury specialist or physiotherapist.",
      ],
      "avoid": ["Any intense physical activity!"]
    },
    "PELVIC AVULSION FRACTURE": {
      "overview":
          "A pelvic avulsion fracture is where the tendon comes away from the bone, often taking a piece of bone with it. This most commonly occurs at the ischial tuberosity where the hamstrings attach, or the iliac spine, at the front where the thigh attaches. Pain can be caused by explosive movements, and the location of the pain indicates what kind of avulsion fracture it is.",
      "try": [
        "If this injury is suspected, seek medical attention as soon as possible.",
        "Rest the area as much as possible.",
        "Apply ice regularly for the first 2-3 days to ease pain and inflammation.",
        "An X-ray will help confirm the diagnosis.",
        "Generally, the treatment for a pelvic avulsion fracture is rest. They tend to heal on their own in 4-6 weeks.",
        "In some cases, surgery may be performed to re-attach the bone and tendon to the pelvis. This is mainly reserved for large fractures of where the fracture is displaced considerably.",
        "Following the rest period, a gradual rehabilitation programme can be commenced which aims to regain full strength and movement at the hip."
      ],
      "avoid": ["Any physical activity that include this area!"]
    },
    "SACROILIAC JOINT PAIN": {
      "overview":
          "Inflammation of the Sacroiliac joint causes pain in the lower back and buttocks, usually on one side only. Here we explain the symptoms, causes, and treatment for Sacroiliac joint pain.",
      "try": [
        "Wearing a sacroiliac support belt which may help take the strain off the joint and provide relief from symptoms. It works by applying compression around the hip and across the joint, protecting it from further injury.",
        "If muscle spasm around the area is suspected use a heat pack to help them relax. Sports massage may also help reduce muscle tension.",
        "Rest from any activities which cause pain, particularly running."
      ],
      "avoid": [
        "Heat if acute inflammation of the joint is suspected though as this will make the condition worse. In this case, cold therapy may be more effective."
      ]
    },
    "RECTUS FEMORIS TENDON STRAIN": {
      "overview":
          "A Rectus femoris tendon strain is a tear of the tendon of the powerful quadriceps muscles at the front of the thigh. It often occurs at its origin at the front of the hip. An avulsion strain occurs when the tendon tears, pulling a small piece of bone away with it.",
      "try": [
        "Apply cold therapy and compression immediately. Ice can be applied for 10 to 15 minutes every hour for the first 24 hours or so during the painful acute stage. Frequency can reduce to two or three times a day as symptoms subside.",
        "A professional therapist may use ultrasound and laser treatment to help with the pain, inflammation and healing process.",
        "If the tendon has torn completely then you will need an operation to repair it.",
        "Sports massage after the acute stage can be beneficial. Both cross friction massage applied to the tendon itself, and deep tissue massage to relax the muscles.",
        "A full rehabilitation program of stretching and strengthening exercises should be done before more sports specific functional exercises to return the athlete back to full fitness."
      ],
      "avoid": ["Any physical activity!"]
    },
    "HIP POINTER": {
      "overview":
          "A hip pointer occurs following an impact to the iliac crest at the front/top of your hip bone. It is common in contact sports such as American Football and Rugby.",
      "try": [
        "Begin treatment by resting, applying ice and compression to the injury.",
        "Ice or cold therapy can be applied for 10 minutes every hour initially reducing the frequency as required.",
        "This will help to reduce or limit any pain, inflammation, and swelling.",
        "Visit a sports injury professional who can fully assess the injury to rule out any complications as stated above.",
        "They can also advise on a full rehabilitation program with hip stretching and mobility exercises followed by hip strengthening exercises."
      ],
      "avoid": ["Unsupervised physical activity"]
    },
    "ILIUM APOPHYSITIS": {
      "overview":
          "Ilium apophysitis is an overuse injury which occurs in children and adolescents at the front of the pelvis. It particularly affects those who participate in a lot of sport. Here we explain the symptoms, causes, and treatment of Ilium apophysitis.",
      "try": [
        "Apply ice or cold therapy products to ease pain and inflammation.",
        "A doctor may recommend anti-inflammatory medication.",
        "Once-daily activities are pain-free, stretches for the hip muscles can be performed.",
        "Sports massage therapy may be able to help relax really tight muscles, especially the rectus femoris.",
        "Once pain has gone, a gradual return to sport can be initiated.",
        "Ensure a full warm-up is performed and stop if any pain is felt.",
        "The condition will ease on its own once growth is finished and the bone is fully matured."
      ],
      "avoid": ["Aggravating activities until pain and tenderness ease."]
    },
    "LABRAL TEAR OF THE HIP JOINT": {
      "overview":
          "A labral tear of the hip joint is a tear to the cartilage lining of the hip joint, called the acetabulum which acts as cushioning for the joint. A tear can cause hip and groin pain and make the joint stiff. This hip injury can be caused by a direct impact or come on gradually through degeneration.",
      "try": [
        "Treatment usually requires surgery known as debridement via an arthroscopy (key-hole surgery).",
        "The torn part of the labrum is removed. Generally results from this procedure are very good.",
        "A rehabilitation program should be followed after surgery to restore full strength and movement to the hip joint and prevent further injuries or instability.",
        "If left the injury could degenerate into a worn hip joint with eroding of the hard cartilage on the ends of the bone and development of Osteoarthritis in the hip."
      ],
      "avoid": ["Any physical activity and seek immediate medical attention!"]
    },
    "PELVIC STRESS FRACTURE": {
      "overview":
          "A pelvic stress fracture is a hairline fracture of the pelvis bone. It is caused by repetitive impacts or forces, rather than one sudden impact or accident. Here we explain the symptoms and causes of a stress fracture of the pelvis.",
      "try": [
        "Try to stay off the feet as much as possible for the first 2 weeks.",
        "Apply cold therapy or ice to the painful area to ease pain, swelling, and inflammation",
        "Seek medical attention."
      ],
      "avoid": ["Activities which cause pain."]
    },
    "PERTHES' DISEASE": {
      "overview":
          "Perthes’ disease affects children, most commonly boys aged between four and ten years old, but can also occasionally occur in younger children and teenagers. Tiredness and groin pain are two common symptoms, and they may have a noticeable limp. Medical help is needed to diagnose this condition as early as possible to try to prevent and limit any future problems.",
      "try": [
        "It is important that any pain in the knee or hip joints in children should always be looked at by a medical professional. A correct and early diagnosis is important as long-term damage and complications can develop if the condition is not managed.",
        "A doctor may X-ray the hip to help diagnose the cause of hip pain. However, in the early stages of the disease, an x-ray may appear normal and so other investigations such as MRI or bone scans may be performed.",
        "Depending on how severe the disease is will determine whether it requires conservative treatment or surgery.",
        "Maintaining range of motion in the hip through mobility exercises. In particular, exercises to maintain abduction of the hip (moving the leg out sideways) and internal rotation of the hip.",
        "Treatment will depend on the age of the child and the severity of the condition but may include bed rest, crutches, traction, a plaster cast, leg brace, or surgery in extremely severe cases. Arthroscopic (keyhole) surgery is done to remove loose bodies within the joint and repair damaged cartilage (chondroplasty)."
      ],
      "avoid": ["Aggravating activity or exercise"]
    },
    "HIP BURSITIS": {
      "overview":
          "Perthes’ disease will usually resolve over time as the athlete grows as long as it is managed properly. Athletes can return to sport when they are free of symptoms. With competitive young athletes managing injuries and diseases is important. This may mean changing sporting activity for a while, or reducing the volume of training and focussing on quality. For example, a young soccer player may play once or twice a week and substitute other activities such as swimming, or light technical training.",
      "try": [
        "Apply ice to the area to reduce pain and inflammation. Cold can be applied for 10 minutes every hour and reduced to 3 or 4 times a day as the injury heals.",
        "Run only on flat, even surfaces to reduce the pressure on the bursa from uneven ground.",
        "See a sports injury professional.",
        "W"
      ],
      "avoid": [
        "Continuing to train when the pain is not completely released, since will increase the inflammation and prevent hip bursitis from healing."
      ]
    },
    "OSTEOARTHRITIS OF THE HIP": {
      "overview":
          "Osteoarthritis is a degenerative condition resulting from wear and tear in the hip. The cartilage that covers the hip joint facilitates movement, so when this degenerates, mobility reduces while pain and stiffness increases. It is common in older people over the age of 50, especially women. Although there is no cure, there are several things you can do to ease the pain and help slow down degeneration.",
      "try": [
        "NSAID’s- Non-Steroidal Anti-Inflammatory Drugs such as Ibuprofen can provide some temporary pain relief.",
        "Weight Loss – As obesity is associated with the onset of osteoarthritis, weight loss, if needed, can have a significant effect on slowing the disease progression.",
        "Exercise Program – A specific exercise program can help to maintain healthy cartilage and range of motion of the joint. In addition, keeping the attaching muscles and tendons conditioned and strong will aid in the joint’s stability.",
        "Muscle relaxants – These are usually administered in low doses and can relieve pain that arises from muscles strained in an attempt to support osteoarthritic joints.",
        "Heat and Cold Treatments – Local application of heat and cold can help with relief from pain and inflammation after exercise.",
        "Viscosupplementation – A viscosupplement can be administered as an injection by a clinician. This substance helps to lubricate the hip joint and can decrease the amount of inflammation.",
        "Hip Replacement – Hip replacement operations have become more frequent as procedures have advanced"
      ],
      "avoid": ["Being obese"]
    },
    "SYNOVITIS OF THE HIP": {
      "overview":
          "Hip synovitis is inflammation of the synovial membrane of the hip. It often occurs in sports people alongside another hip joint injury.",
      "try": [
        "Treatment should be aimed at addressing the original cause or co-existing condition.",
        "NSAID or anti-inflammatory medication may be prescribed along with physiotherapy to restore normal movement and function.",
        "Any hip pain in children should be examined by a Doctor.",
        "Synovitis must be distinguished from a bacterial infection which is far more serious. This can be done using blood tests.",
        "X-rays may also be taken to rule out Perthes’ disease.",
        "Anti-inflammatory medication may be prescribed (such as ibuprofen).",
        "Generally, the condition is left to run its course, although the child should be closely observed and temperature checks should be made."
      ],
      "avoid": ["Activity when you fell a hip joint injury."]
    },
    "SLIPPED CAPITAL FEMORAL EPIPHYSIS": {
      "overview":
          "A slipped capital femoral epiphysis occurs when there is a fracture at the neck or top of the thigh bone causing hip pain. It is more common in boys aged 11 to 16 years old and usually develops gradually but can occur suddenly. Failure to recognise this injury may cause long-term damage and surgery may be required.",
      "try": [
        "If you suspect this is the cause of hip pain then seek medical attention as soon as possible.",
        "An acute, sudden onset injury is a medical emergency requiring immediate surgery.",
        "A slipped capital femoral epiphysis that develops gradually may also require surgery.",
        "Failure to treat this injury may lead to the death of the head of the femur and permanent injury or disability."
      ],
      "avoid": ["Not taking the pain seriously. Contact a doctor immediately!"]
    },

    //Elbows
    "TENNIS ELBOW": {
      "overview":
          "Tennis elbow is also known as lateral epicondylitis, lateral elbow tendinopathy, or extensor tendinopathy. It is a common term used to describe long-term, chronic pain on the outside of the elbow.",
      "try": [
        "Immediate first aid: If your elbow is acutely painful or you have recently noticed it, then for the first 72 hours post-injury, apply the principles of P.R.I.C.E. (Protection, Rest, Ice, Compression, and Elevation).",
        "Rest: Rest is probably the most important part of treatment and is often difficult to do. If you continue to use the painful elbow then it will not recover as quickly and may become chronic and very difficult to treat.",
        "Ice/cold therapy: Apply ice or a cold compression wrap to reduce pain and inflammation, especially if your elbow is acutely painful. Apply cold for for no more than 15 minutes as the injured tissues are very close to the skin and do not need longer. Ice should be wrapped in a wet tea towel to avoid ice burns, or better still use a commercially available cold therapy compression wrap.",
        "Wear a Tennis elbow brace"
      ],
      "avoid": [
        "Gripping heavy things, opening heavy doors, using a screwdriver and of course playing a backhand in tennis."
      ]
    },
    "RADIOHUMERAL BURSITIS": {
      "overview":
          "Radiohumeral bursitis is inflammation of a bursa in the elbow and has similar symptoms to Tennis elbow. Here we explain the causes and treatment of Radiohumeral bursitis.",
      "try": [
        "Treatment for Radiohumeral bursitis is to rest the inflamed area as much as possible. If you must resume normal activity immediately, wear a sling until the pain becomes more bearable.",
        "To prevent your elbow from becoming stiff or difficult to move (frozen elbow), begin normal, slow joint movement as soon as possible.",
        "Painkillers and anti-inflammatory drugs may be prescribed or Corticosteroid injections into the bursa to reduce inflammation."
      ],
      "avoid": [
        "Gripping heavy things, opening heavy doors, using a screwdriver"
      ]
    },
    "OSTEOCHONDRITIS DISSECANS IN THE ELBOW JOINT": {
      "overview":
          "Osteochondritis Dissecans is fragmentation of the cartilage and sometimes the underlying bone within a joint. It is more common in adolescents, especially those who do throwing sports. This is because the ends of their bones are not yet fully hardened.",
      "try": [
        "Initial treatment involves rest, ice, compression and elevation to ease pain and swelling.",
        "If problems persist, seek medical attention.",
        "An X-ray or MRI may be taken to confirm the diagnosis.",
        "The need for surgery depends on the amount of displacement of the fragment and the severity of symptoms.",
        "Surgery involves removing the bone fragment (known as debridement)"
      ],
      "avoid": [
        "If surgery is not undertaken, treatment involves rest, the range of motion exercises and avoidance of throwing activities until the pain has cleared."
      ]
    },
    "RADIAL TUNNEL SYNDROME": {
      "overview":
          "Radial tunnel syndrome, also known as radial nerve entrapment, occurs when the radial nerve in the forearm gets compressed or pinched. It has symptoms similar to Tennis Elbow. Here we explain the symptoms, causes, and treatment of radial nerve impingement.",
      "try": [
        "Treatment involves applying the PRICE principles of protection, rest, ice/cold therapy to the elbow and forearm to reduce pain and inflammation.",
        "A doctor may prescribe anti-inflammatory medication such as Ibuprofen to reduce pain and inflammation and relax the muscles (check with your doctor before taking any medication and do not take Ibuprofen if you have asthma). In severe or persistent cases a surgeon may operate to decompress the nerve which is generally successful.",
        "A professional therapist may use soft tissue massage techniques to relax and release the supinator muscle in the forearm which is often the cause of entrapment. Massage will pump blood into the muscle, reducing muscle spasm and helping to relax any tension in the muscle."
      ],
      "avoid": ["Any repetitive wrist movements."]
    },
    "ELBOW AVULSION FRACTURE": {
      "overview":
          "An elbow avulsion fracture occurs when a tendon or ligament tears, pulling a small fragment of bone away with it. It is more common in children and usually occurs on the inside of the elbow. Here we explain the symptoms, causes, and treatment for elbow avulsion fractures.",
      "try": [
        "Treatment is often the same whether there is an avulsion fracture or just a sprain.",
        "However, it may depend on the severity of the fracture and whether the fragment is displaced or not.",
        "Children are also more likely to be offered an alternative treatment for an avulsion fracture as long term, their skeletal growth could be affected.",
        "More severe avulsion fractures or fractures in children may require casting for 6-8 weeks to allow the bone to heal.",
        "Following this, a period of rehabilitation will be required to ensure that full strength and mobility are regained."
      ],
      "avoid": [
        "Gripping heavy things, opening heavy doors, using a screwdriver"
      ]
    },
    "MEDIAL ELBOW LIGAMENT SPRAIN": {
      "overview":
          "The medial collateral ligament (MCL) of the elbow is situated on the inside of the elbow. It helps to provide stability to the joint. The ligament is injured from a sudden traumatic injury, or from repetitive overuse, for example throwing with poor technique.",
      "try": [
        "Initial treatment is to apply the PRICE principles of protection, rest, ice, compression, and elevation.",
        "Apply ice – or cold therapy to reduce pain and inflammation. Do not apply ice directly to the skin as it may cause ice burn. Wrap in a wet tea towel, or use a commercially available cold therapy wrap which can apply compression to the joint as well.",
        "Compression – will help reduce swelling, support and protect the joint. Wear an elbow brace or support to protect the area from further injury whilst healing."
      ],
      "avoid": [
        "All activities which stress the elbow, or increase symptoms. For mild injuries, this may mean a short rest period and if caught early enough simply modifying the technique to avoid stressing the ligaments may be enough. However, for more long term chronic injuries or severe acute injuries complete rest may be necessary."
      ]
    },
    "GOLFER'S ELBOW": {
      "overview":
          "Golfer's elbow is also known as medial epicondylitis, thrower's elbow, or little league elbow. It causes pain on the inside of the elbow, which develops gradually over time. Here we explain the symptoms, causes, and treatment of Golfer's elbow.",
      "try": [
        "Ice – apply a cold therapy and compression wrap for 10 to 15 minutes every hour. After the first few hours, this can be reduced to 3 to 4 times a day as required. Later in the rehabilitation program or if the injury becomes chronic applying heat may be more beneficial.",
        "Elbow brace – Wear a brace or elbow support. This will provide protection and help prevent further injury. A Tennis or Golfer’s elbow type brace is worn around the forearm just below the elbow and changes the angle that the forces transmit through the tendon, hence taking some of the strain off the injured part.",
        "Heat – after the initial acute phase, which may take anywhere from 2 days and 2 weeks, applying heat and using a heat retainer or elbow support, may be more beneficial than ice. Heat will help stimulate blood flow which aids healing."
      ],
      "avoid": [
        "Activity that causes pain. Continuing to use the wrist may result in your injury becoming chronic, making it much more difficult to treat. This may mean simply adapting your training to avoid overstressing the elbow.",
        "Or for more serious injuries, a period of complete rest might be required. In particular, avoid gripping anything tightly or opening heavy doors."
      ]
    },
    "ELBOW HYPEREXTENSION INJURY": {
      "overview":
          "An elbow hyperextension injury occurs when the elbow is bent back the wrong way. This over-straightening causes damage to the ligaments and structures of the elbow. Like several elbow injuries, this often occurs in contact sports like rugby and causes instant pain. Ice, compression, and taping are some of the ways this injury can be treated.",
      "try": [
        "Immediate treatment involves an application of cold therapy and compression.",
        "Wear a support or heat retainer.",
        "Apply elbow strapping to prevent the elbow from hyperextending (bending backward) whilst healing.",
        "A professional therapist may use electrotherapy such as ultrasound to help reduce pain and swelling as well as advise on a full rehabilitation program."
      ],
      "avoid": ["Physical activity."]
    },
    "DISLOCATED ELBOW": {
      "overview":
          "Elbow dislocations are the second most common dislocations in adults, behind the shoulder. The elbow is a very stable joint and so it requires a lot of force to dislocate it. Severe pain and obvious deformity are the common symptoms for this elbow injury, which is normally caused by a fall or direct impact. Read an explanation of elbow dislocations, treatments and how to rehabilitate after the injury.",
      "try": [
        "Visit a Doctor or Hospital immediately",
        "Apply ice or cold therapy to the elbow.",
        "Put the elbow in a sling to support it."
      ],
      "avoid": ["to ‘pop it back in’ yourself! This can cause further damage"]
    },
    "ELBOW & FOREARM FRACTURE": {
      "overview":
          "Elbow dislocations are the second most common dislocations in adults, behind the shoulder. The elbow is a very stable joint and so it requires a lot of force to dislocate it. Severe pain and obvious deformity are the common symptoms for this elbow injury, which is normally caused by a fall or direct impact. Read an explanation of elbow dislocations, treatments and how to rehabilitate after the injury.",
      "try": ["Seek medical attenttion immediately!"],
      "avoid": ["Any physical activities."]
    },
    "ULNAR NERVE COMPRESSION": {
      "overview":
          "An Ulnar nerve compression is caused either by a direct blow to the inside of the elbow, or from repetitive trauma. It causes numbness and tingling down the forearm and into the forth and fifth fingers. Sometimes it is referred to as 'hitting your funny bone'.",
      "try": [
        "Treatment will depend on the cause. For acute Ulnar nerve contusions, these usually pass after a few minutes. For gradual onset and long term nerve compression injuries then identifying the cause is important, alongside treating the immediate symptoms.",
        "Apply cold therapy. Cold reduces pain and inflammation.",
        "If you are a cyclist then consider having the way your bike is set up looked at by an experienced cycling coach. Make sure you adjust your position on the handlebars occasionally on long rides."
      ],
      "avoid": ["Any physical activities!"]
    },
    "TRICEPS TENDONITIS": {
      "overview":
          "Triceps tendonitis (tendinopathy) is an overuse injury, resulting in inflammation (or degeneration) of the triceps tendon where it inserts into the back of the elbow.",
      "try": [
        "Apply ice or cold therapy to the injury in the first two days to reduce pain and inflammation.",
        "Ice can be applied for 10 minutes every hour initially reducing frequency to two or three times a day as symptoms allow. Do not apply ice directly to the skin as it may cause ice burns. Wrap the ice in a wet tea towel or use a commercially available cold therapy wrap.",
        "Later in the healing process, after the acute stage has passed, applying heat and wearing a heat retainer is likely to be more beneficial.",
        "Continue to rest until normal daily activities are pain-free."
      ],
      "avoid": ["Any physical activities!"]
    },
    "ELBOW BURSITIS(STUDENTS ELBOW)": {
      "overview":
          "Elbow bursitis, also known as Students elbow or Olecranon bursitis, is swelling and inflammation of the bursa at the back of the elbow. Here we explain the symptoms, causes, and treatment for elbow bursitis.",
      "try": [
        "Apply ice or cold therapy. The is to help reduce pain and inflammation. Cold should be applied for 10 minutes every hour until the pain and swelling have gone down.",
        "A doctor may recommend anti-inflammatory medication such as ibuprofen.",
        "Aspirating the bursa is an option in some cases. A needle is inserted into the bursa and the fluid sucked out. In severe cases, a doctor may immobilize the arm or give a steroid injection.",
        "If conservative treatment fails then a surgeon may operate for elbow bursitis."
      ],
      "avoid": ["Any physical activities!"]
    },
    "OLECRANON FRACTURE": {
      "overview":
          "The Olecranon is the large bony prominence at the back of the elbow. It is usually fractured from a direct impact or fall onto a bent elbow. Here we explain the signs, symptoms, causes, and treatment for Olecranon fractures.",
      "try": [
        "If you suspect you may have an Olecranon fracture then seek medical attention immediately!",
        "Apply the PRICE principles of protection, rest, ice, compression, and elevation.",
        "A doctor may prescribe pain medication and the use of a sling to avoid further injury.",
        "If the fragment is not displaced then your elbow will most likely be immobilised in a splint or cast to allow healing.",
        "However, if the fragment is displaced, then surgery may be needed to realign the fragment of bone and fix it securely in place."
      ],
      "avoid": ["Any physical activities!"]
    },

    // Hands and Arms Diagnoses
    "SPRAINED": {
      "overview":
          "If there is no fracture, the tendons (a cord of tissue connecting muscle to bone) or ligaments (tissue connecting bones to each another) around the joint may be SPRAINED or STRAINED.",
      "try": [
        "Use a towel as a sling to support the affected arm",
        "Gently hold an ice pack (or a bag of frozen peas wrapped in a tea towel) to the injured area for up to 20 minutes every 2 to 3 hours",
        "Stop any bleeding by applying pressure to the wound with a clean pad or dressing if possible",
        "Remove any jewellery such as rings or watches – your fingers, wrist or hand could swell up",
        "Take paracetamol for the pain"
      ],
      "avoid": [
        "Do not eat or drink anything in case you need surgery to fix the bone when you get to hospital",
        "Do not try to use the affected arm or wrist"
      ]
    },
    "LATERAL EPICONDYLITIS": {
      "overview":
          "It occurs when the tendons that attach the muscle to the bone on the outside part of the elbow swell or tear. This weakens the elbow connection and puts great stress on the area.",
      "try": [
        "Try using light weights to strengthen and doing exercises to stretch.",
        "Wearing a splint during activities may help prevent the condition from getting worse.",
        "Try changing your sports equipment or technique.",
        "Try changing your work habitat and habits, or job."
      ],
      "avoid": [
        "Rest your arm by avoiding the movement that caused the condition."
      ]
    },
    "CARPAL TUNNEL SYNDROME": {
      "overview":
          "Carpal tunnel syndrome is a painful disorder of the wrist and hand. The carpal tunnel is a narrow tunnel formed by the bones and other tissues of your wrist. This tunnel protects your median nerve. The median nerve helps you move your thumbs and the first 3 fingers on each hand.",
      "try": [
        "Lose weight if you’re overweight.",
        "Get treatment for any disease you have that may cause carpal tunnel syndrome.",
        "If you do the same tasks over and over with your hands, try not to bend, extend, or twist your hands for long periods of time.",
        "If you use a keyboard a lot, adjust the height of your chair so that your forearms are level with your keyboard, and you don’t have to flex your wrists to type.",
        "Take regular breaks from repeated hand movements to give your hands and wrists time to rest."
      ],
      "avoid": [
        "Don’t work with your arms too close or too far from your body.",
        "Don’t rest your wrists on hard surfaces for long periods of time."
      ]
    },
    "GANGLION CYST": {
      "overview":
          "A ganglion cyst is a fluid-filled swelling that usually develops near a joint or tendon. The cyst can range from the size of a pea to the size of a golf ball.",
      "try": [
        "Treatment is usually only recommended if the cyst causes pain or affects the range of movement in a joint. The 2 main treatment options for a ganglion cyst are: draining fluid out of the cyst with a needle and syringe (aspiration) cutting the cyst out using surgery"
      ],
      "avoid": [""]
    },
    "INFECTION": {
      "overview": "",
      "try": [
        "Apply cold compresses to your skin several times a day to reduce itching and inflammation.",
        "Take over-the-counter antihistamines to decrease itching.",
        "Use topical creams and ointment to reduce itching and discomfort. "
      ],
      "avoid": [
        "Forget to hand washing as is one of the best ways to avoid infections."
      ]
    },
    "RHEUMATOID ARTHRITIS": {
      "overview":
          "Rheumatoid arthritis (RA) is a chronic (lasting) inflammatory disorder. It causes swelling and pain in the lining of your joints. ",
      "try": [
        "Eat a healthy diet.",
        "Reduce the stress on your affected joints.",
        "Do regular, gentle exercise."
      ],
      "avoid": ["Smoking", "Being overweight"]
    },
    "GOUT": {
      "overview":
          "Gout is a common type of arthritis. It is marked by swelling and pain in your joints.",
      "try": [
        "Lose weight if you’re overweight.",
        "Drink lots of water to help flush uric acid from your body.",
        "Try to eat foods that are low in salt and fat."
      ],
      "avoid": [
        "Limit or avoid foods that are rich in purines. These include salmon, sardines, herring, organ meats, asparagus, and mushrooms.",
        "Limit the amount of alcohol you drink."
      ]
    }
  };
}
