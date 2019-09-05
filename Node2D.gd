extends Control

var story = "ok you go to  %s  princess \n My name is %s \n I am a %s "
var answers = []
var questions = []
var question_number = 0

func _ready():
	
	$VBoxContainer/DisplayText.text = "No warrior \n can To help the princess succeed \n Because there are dragons waiting \n for you all the time \n You are going to help the princess."
	
	questions.append("No warrior \n can help the princess form dragons \n Because there are dragons waiting \n for you all the time \n You are going to help the princess.")
	questions.append("What you name?")
	questions.append("Who are you?")
	
	$VBoxContainer/DisplayText.text = questions[0]
	

func _on_playerbuttom_pressed():
	
	if question_number == 0:
		# answer the question
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[1]
		$PlayerInput.text = ""
	
	#pause
	
	if question_number == 1:
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = questions[2]
		$PlayerInput.text = ""
		
	if question_number == 2:
		answers.append( $PlayerInput.text )
		print( answers )
		$VBoxContainer/DisplayText.text = story % answers
		$PlayerInput.text = ""
		
	question_number = question_number + 1
