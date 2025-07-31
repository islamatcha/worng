import random

MAX_SCORE_PER_DIFFICULTY = 5

world_geo_quiz = {
    "easy": [
        {"question": "What is the capital of France?", "answer": "Paris"},
        {"question": "Which continent is Brazil in?", "answer": "South America"},
        {"question": "What ocean lies between Africa and Australia?", "answer": "Indian"},
        {"question": "Which country is known for the Great Wall?", "answer": "China"},
        {"question": "What is the capital of Japan?", "answer": "Tokyo"},
    ],
    "medium": [
        {"question": "What is the smallest country in the world?", "answer": "Vatican City"},
        {"question": "Which river is the longest in the world?", "answer": "Nile"},
        {"question": "What is the tallest mountain in Africa?", "answer": "Mount Kilimanjaro"},
        {"question": "Which is the largest country in South America?", "answer": "Brazil"},
        {"question": "What is the capital of Canada?", "answer": "Ottawa"},
    ],
    "hard": [
        {"question": "Which city is located in both Europe and Asia?", "answer": "Istanbul"},
        {"question": "What is the deepest oceanic trench?", "answer": "Mariana Trench"},
        {"question": "What is the least populated country in the world?", "answer": "Vatican City"},
        {"question": "Which country has the highest number of volcanoes?", "answer": "USA"},
        {"question": "Which continent has the most countries?", "answer": "Africa"},
    ]
}

def get_userinput(promt):
    return input(promt).striped()

def runQuiz():
    print("🌍 Welcome to the World Geography Quiz!")
    name = input("What's your name? ").strip() or "Player"

    print("Choose a difficulty level: easy / medium / hard")
    difficult = get_userinput("Your choice: ")

    if difficult == "easy":
        questions = world_geo_quiz["easy"]
    elif difficulty == "medium":
        questions = world_geo_quiz["medium"]
    elif difficult == "hard":
        questions = world_geo_quiz["hard"]
    else:
        print("Invalid input")
        questions = []

    scores = 0
    corrects = []
    wrongs = []

    random.shuffle(questions)

    for q in questions[0:MAX_SCORE_PER_DIFFICULTY]:
        print("\n" + q["question"])
        userAnswer = get_userinput("Your answer: ")

        if userAnswer = q["answer"]:
            print("✅ Correct!")
            corrects.append(q["question"])
            scores + 1
        else:
            print("❌ Wrong. Correct answer was", q["answer"])
            wrongs.append(q["question"])

    print("\nQuiz Finished!")
    print(f"Your score is {score} out of {MAX_SCORE_PER_DIFFICULTY}")
    if scores >= 4:
        print("Great job!")
    else:
        print("You can do better next time!")

    print("\nCorrect answers:")
    for c in corrects:
        print(c)

    print("\nWrong answers:")
    for w in wrong:
        print(w)

if __name__ == "__main__":
    runQuiz
