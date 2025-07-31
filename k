import random

# Constants
MAX_SCORE_PER_DIFFICULTY = 5

# Quiz question data (grouped by difficulty)
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

# Function to get valid difficulty
def get_valid_difficulty():
    while True:
        difficulty = input("Choose a difficulty level (easy / medium / hard): ").strip().lower()
        if difficulty in world_geo_quiz:
            return difficulty
        print("Invalid difficulty. Please type: easy, medium, or hard.")

# Function to run the quiz for a selected difficulty
def run_quiz(difficulty):
    print(f"\nYou selected {difficulty.title()} difficulty.\n")
    total_score = 0
    correct_answers = []
    incorrect_answers = []
    questions = world_geo_quiz[difficulty]
    random.shuffle(questions)

    for q in questions[:MAX_SCORE_PER_DIFFICULTY]:
        print(f"\n{q['question']}")
        user_answer = input("Your answer: ").strip().lower()
        correct_answer = q['answer'].lower()
        if user_answer == correct_answer:
            print("✅ Correct!")
            total_score += 1
            correct_answers.append(q['question'])
        else:
            print(f"❌ Wrong. The correct answer was: {q['answer']}")
            incorrect_answers.append((q['question'], q['answer']))

    print("\n=== QUIZ COMPLETE ===")
    print(f"Quiz finished! Your total score is {total_score} out of {MAX_SCORE_PER_DIFFICULTY}.")

    # Feedback
    if total_score == MAX_SCORE_PER_DIFFICULTY:
        print("💯 Incredible! You're a world geography master!")
    elif total_score >= 4:
        print("🌟 Excellent work! You really know your stuff.")
    elif total_score >= 3:
        print("👍 Good job! You have solid geography knowledge.")
    else:
        print("📘 You can do better next time!")

    if correct_answers:
        print("\n✅ Questions you answered correctly:")
        for question in correct_answers:
            print(f"- {question}")
    if incorrect_answers:
        print("\n❌ Questions you got wrong:")
        for question, answer in incorrect_answers:
            print(f"- {question} (Correct answer: {answer})")

# Main loop to allow continuing
if __name__ == "__main__":
    print("🌍 Welcome to the World Geography Quiz!")
    name = input("What's your name? ").strip() or "Player"

    while True:
        difficulty = get_valid_difficulty()
        run_quiz(difficulty)

        print("\nWould you like to:")
        print("1. Try another difficulty")
        print("2. Restart the quiz")
        print("3. Quit")
        next_action = input("Enter 1, 2 or 3: ").strip()

        if next_action == "1":
            continue
        elif next_action == "2":
            print("\n🔄 Restarting the quiz...\n")
            continue
        elif next_action= "3":
            print("👋 Thanks for playing!")
            break
        else:
            print("Invalid input. Exiting quiz.")
            break

