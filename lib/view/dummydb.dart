class DummyDb {
  static List<Map<String, dynamic>> geographyQuestions = [
    {
      "question": "What is the capital of France?",
      "options": ["Berlin", "Madrid", "Paris", "Rome"],
      "answerIndex": 2
    },
    {
      "question": "Who wrote 'Romeo and Juliet'?",
      "options": [
        "Mark Twain",
        "William Shakespeare",
        "Jane Austen",
        "Charles Dickens"
      ],
      "answerIndex": 1
    },
    {
      "question": "Which planet is known as the Red Planet?",
      "options": ["Earth", "Mars", "Jupiter", "Saturn"],
      "answerIndex": 1
    },
    {
      "question": "What is the boiling point of water?",
      "options": ["50°C", "100°C", "150°C", "200°C"],
      "answerIndex": 1
    },
    {
      "question": "Which element has the chemical symbol 'O'?",
      "options": ["Oxygen", "Gold", "Osmium", "Oganesson"],
      "answerIndex": 0
    },
    {
      "question": "What is the largest mammal?",
      "options": ["Elephant", "Blue Whale", "Giraffe", "Polar Bear"],
      "answerIndex": 1
    },
  ];

  static List<Map<String, dynamic>> sportsQuestions = [
    {
      "question": "Which country won the FIFA World Cup in 2018?",
      "options": ["Germany", "Brazil", "France", "Argentina"],
      "answerIndex": 2
    },
    {
      "question": "How many players are there in a baseball team?",
      "options": ["9", "10", "11", "12"],
      "answerIndex": 0
    },
    {
      "question": "In which sport is the Ryder Cup contested?",
      "options": ["Tennis", "Golf", "Cricket", "Football"],
      "answerIndex": 1
    },
    {
      "question":
          "What is the maximum score in a single frame of ten-pin bowling?",
      "options": ["200", "240", "300", "350"],
      "answerIndex": 2
    },
    {
      "question": "Who holds the record for the most Olympic gold medals?",
      "options": ["Usain Bolt", "Michael Phelps", "Carl Lewis", "Mark Spitz"],
      "answerIndex": 1
    },
    {
      "question": "Which sport is known as the 'king of sports'?",
      "options": ["Basketball", "Football", "Cricket", "Rugby"],
      "answerIndex": 1
    },
  ];

  static List<Map<String, dynamic>> movieQuestions = [
    {
      "question": "Who directed 'Inception'?",
      "options": [
        "Christopher Nolan",
        "Steven Spielberg",
        "Martin Scorsese",
        "Quentin Tarantino"
      ],
      "answerIndex": 0
    },
    {
      "question": "What is the highest-grossing film of all time?",
      "options": [
        "Titanic",
        "Avatar",
        "Star Wars: The Force Awakens",
        "Avengers: Endgame"
      ],
      "answerIndex": 3
    },
    {
      "question": "Who played Jack in 'Titanic'?",
      "options": [
        "Leonardo DiCaprio",
        "Brad Pitt",
        "Johnny Depp",
        "Matt Damon"
      ],
      "answerIndex": 0
    },
    {
      "question": "What movie features the quote 'I'll be back'?",
      "options": ["Terminator", "Predator", "Die Hard", "RoboCop"],
      "answerIndex": 0
    },
    {
      "question": "Which film won the Academy Award for Best Picture in 2020?",
      "options": ["1917", "Parasite", "Joker", "Once Upon a Time in Hollywood"],
      "answerIndex": 1
    },
    {
      "question": "In which movie does the character 'Forrest Gump' appear?",
      "options": [
        "The Shawshank Redemption",
        "Forrest Gump",
        "Pulp Fiction",
        "The Godfather"
      ],
      "answerIndex": 1
    },
  ];

  static List<Map<String, dynamic>> historyQuestions = [
    {
      "question": "Who was the first President of the United States?",
      "options": [
        "George Washington",
        "Thomas Jefferson",
        "Abraham Lincoln",
        "John Adams"
      ],
      "answerIndex": 0
    },
    {
      "question": "In which year did the Titanic sink?",
      "options": ["1912", "1914", "1920", "1905"],
      "answerIndex": 0
    },
    {
      "question":
          "Who was the first woman to fly solo across the Atlantic Ocean?",
      "options": [
        "Amelia Earhart",
        "Bessie Coleman",
        "Harriet Quimby",
        "Jacqueline Cochran"
      ],
      "answerIndex": 0
    },
    {
      "question": "What ancient civilization built the pyramids?",
      "options": ["Romans", "Greeks", "Egyptians", "Mayans"],
      "answerIndex": 2
    },
    {
      "question": "Who was assassinated on April 4, 1968?",
      "options": [
        "Martin Luther King Jr.",
        "Robert Kennedy",
        "Malcolm X",
        "John F. Kennedy"
      ],
      "answerIndex": 0
    },
    {
      "question": "What year did World War II end?",
      "options": ["1945", "1944", "1939", "1950"],
      "answerIndex": 0
    },
  ];

  static List<Map<String, dynamic>> physicsQuestions = [
    {
      "question": "What is the speed of light in a vacuum?",
      "options": [
        "300,000 km/s",
        "150,000 km/s",
        "450,000 km/s",
        "600,000 km/s"
      ],
      "answerIndex": 0
    },
    {
      "question": "What is Newton's third law of motion?",
      "options": [
        "Force equals mass times acceleration",
        "For every action, there is an equal and opposite reaction",
        "Energy cannot be created or destroyed",
        "Objects in motion stay in motion"
      ],
      "answerIndex": 1
    },
    {
      "question": "What is the unit of force?",
      "options": ["Joule", "Newton", "Watt", "Pascal"],
      "answerIndex": 1
    },
    {
      "question": "Which particle is known as the building block of matter?",
      "options": ["Atom", "Molecule", "Quark", "Electron"],
      "answerIndex": 0
    },
    {
      "question": "What is the law of conservation of energy?",
      "options": [
        "Energy can be created and destroyed",
        "Energy cannot be created or destroyed",
        "Energy can be transformed into matter",
        "Energy always increases"
      ],
      "answerIndex": 1
    },
    {
      "question":
          "What is the primary force that causes objects to fall to Earth?",
      "options": ["Magnetism", "Friction", "Gravity", "Inertia"],
      "answerIndex": 2
    },
  ];

  static List<Map<String, dynamic>> artistQuestions = [
    {
      "question": "Which artist painted the Mona Lisa?",
      "options": [
        "Vincent van Gogh",
        "Pablo Picasso",
        "Leonardo da Vinci",
        "Claude Monet"
      ],
      "answerIndex": 2
    },
    {
      "question": "Which art movement is Salvador Dalí associated with?",
      "options": ["Surrealism", "Cubism", "Impressionism", "Expressionism"],
      "answerIndex": 0
    },
    {
      "question": "Who created the sculpture 'David'?",
      "options": ["Michelangelo", "Donatello", "Bernini", "Rodin"],
      "answerIndex": 0
    },
    {
      "question": "What is the main theme of Vincent van Gogh's paintings?",
      "options": ["Portraits", "Landscapes", "Abstract", "Surrealism"],
      "answerIndex": 1
    },
    {
      "question":
          "Which famous artist is known for his drip painting technique?",
      "options": [
        "Jackson Pollock",
        "Andy Warhol",
        "Pablo Picasso",
        "Henri Matisse"
      ],
      "answerIndex": 0
    },
    {
      "question": "Who painted 'The Starry Night'?",
      "options": [
        "Claude Monet",
        "Vincent van Gogh",
        "Edvard Munch",
        "Gustav Klimt"
      ],
      "answerIndex": 1
    },
  ];
}
