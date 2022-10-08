import 'package:e_learning/Compoments/Quizcompoments/Ques_model.dart';
import 'package:flutter/material.dart';

List<QuestionModel> questions = [
  QuestionModel(
    "What time ______ work on Monday? ?",
    {
      "do you finish": false,
      "have finished": false,
      "will you finish": true,
      "are you going to finish": false,
    },
  ),
  QuestionModel("______ this weekend? ?", {
    "Do you go out": false,
    "Will you go out": false,
    "is going out": false,
    "Are you going out": true,
  }),
  QuestionModel("I'm sorry I made you so angry. I ______ it again !", {
    "would not do ": false,
    "won't do": true,
    "i will not be going to do": false,
    "I haven't done": false,
  }),
  QuestionModel("It's really hot. ______ the window, please?", {
    "Are you going to open": false,
    "Do you open": false,
    "Will you open": true,
    "have you opened": false,
  }),
  QuestionModel("I don't think I ______ come tomorrow", {
    "will be able to": true,
    "have be able to": false,
    "I am able to": false,
    "have not to": false,
  }),
  QuestionModel(
      "The new musical ______ next week at 12th Street's Old Auditorium.", {
    "ha been performed": false,
    "is going to perform": false,
    "is going to be performed": true,
    "is performed": false,
  }),
  QuestionModel("A lot of measures ______ to fix the economy.", {
    "has taken": false,
    "have taken": false,
    "are taking": false,
    "have been taken": true,
  }),
  QuestionModel("I ______ you exactly what to do when we arrive.", {
    "will be shown": false,
    "am shown": false,
    "will show": true,
    "has shown": false,
  }),
  QuestionModel(
      "The police discovered a group of women who ______ in an illegal factory.",
      {
        "have been exploited": false,
        "has been exploited": false,
        "were being exploited": true,
        "were exploiting": false,
      }),
  QuestionModel("When do you think they ______ us the copy of the contract?", {
    "will be sent": false,
    "will send": true,
    "have send": false,
    "are they being sent": false,
  }),
  QuestionModel("What would you have done if I ______?", {
    "hasn't come": false,
    "hadn't come": true,
    "wouldn't come": false,
    "didn't come": false,
  }),
];
