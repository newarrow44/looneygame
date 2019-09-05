extends Control

var story = "I %s want to help the princess \n My name is %s \n I am %s "
var answers = ["no","oven","just a merchant"]
var questions = []

func _ready():
	print( story % answers )
	
	$VBoxContainer/DisplayText.text = "No warrior \n can To help the princess succeed \n Because there are dragons waiting \n for you all the time \n You are going to help the princess."
	
	questions.append("You are going to help the princess.")
	questions.append("Who are you")
	print(questions)
	print(len(questions))
	print(questions[0])
	print(questions[1])

func _on_playerbuttom_pressed():
	$VBoxContainer/DisplayText.text = story % answers
