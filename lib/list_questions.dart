import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import './question.dart';

List<Question> questions = [
  Question(
    "What is half of a quarter of 8000?",
    "assets/q1.png",
    {
      "500": false,
      "1000": true,
      "2000": false,
      "800": false,
    },
  ),
  Question(
    "Which picture is different from the rest?",
    "assets/q2.png",
    {
      "1": false,
      "2": true,
      "3": false,
      "4": false,
    },
  ),
  Question(
    "Of the four countries Canada, Russia, Mexico and the United States, which country is this map of?",
    "assets/q3.png",
    {
      "Canada": false,
      "Russia": true,
      "Mexico": false,
      "United States": false,
    },
  ),
  Question(
    "Fill in the numbers in the following sequence:",
    "assets/q4.png",
    {
      "22": true,
      "23": false,
      "24": false,
      "25": false,
    },
  ),
  Question(
    "Finger is to hand as leaf to ?",
    "assets/q5.png",
    {
      "A": true,
      "B": false,
      "C": false,
      "D": false,
    },
  ),
  Question(
    "What number position is the car in?",
    "assets/q6.png",
    {
      "85": false,
      "86": false,
      "87": true,
      "88": false,
    },
  ),
  Question(
    "What is 20% of 30 USD?",
    "assets/q7.png",
    {
      "A": false,
      "B": true,
      "C": false,
      "D": false,
    },
  ),
  Question(
    "In numbers from 1 to 100, how many times does the number 5 appear?",
    "assets/q8.png",
    {
      "A": false,
      "B": false,
      "C": true,
      "D": false,
    },
  ),
  Question(
    "What day was yesterday if monday is in two days?",
    "assets/q9.png",
    {
      "A": false,
      "B": false,
      "C": true,
      "D": false,
    },
  ),
  Question(
    "HCAEP = 46251. PEACH = ?",
    "assets/q10.png",
    {
      "A": false,
      "B": false,
      "C": false,
      "D": true,
    },
  ),
];

List<History> historys = [
  History("Which of these year/events is not correctly matched?", {
    "1994: Yasir Arafat Awarded The Nobel Peace Prize": false,
    "1981: California Opens Los Angeles' First Highway": true,
    "1991: Operation Desert Storm Begins": false,
    "1814: The Star-Spangled Baner Written": false,
  }),
  History("Who was the first President of the United States?", {
    "Thomas Jefferson": false,
    " Benjamin Franklin": false,
    "George Washington": true,
    " Abraham Lincoln": false,
  }),
  History(
      "Which ancient civilization is known for building the Great Pyramids of Giza?",
      {
        "Roman Empire": false,
        "Ancient Greece": false,
        "Ancient Egypt": true,
        "Inca Empire": false,
      }),
  History(
      "Who is credited with inventing the printing press in the 15th century?",
      {
        "ohannes Gutenberg": false,
        "Leonardo da Vinci": true,
        "Galileo Galilei": false,
        "Christopher Columbus": false,
      }),
  //5
  History("What event marked the beginning of World War I in 1914?", {
    "The signing of the Treaty of Versailles": false,
    "The assassination of Archduke Franz Ferdinand": true,
    "The Battle of the Bulge": false,
    "The bombing of Pearl Harbor": false,
  }),
  History("Who was the first Emperor of the Roman Empire?", {
    "Julius Caesar": false,
    "Nero": false,
    "Augustus": true,
    "Constantine the Great": false,
  }),
  //6
  History(
      "Who was the leader of the Soviet Union during the Cuban Missile Crisis in 1962?",
      {
        "Joseph Stalin": false,
        "Vladimir Putin": false,
        "Leon Trotsky": false,
        "Nikita Khrushchev": true,
      }),
  //7
  History("What famous ancient wonder of the world was located in Babylon?", {
    "The Colossus of Rhodes": false,
    "The Great Wall of China": true,
    "The Hanging Gardens of Babylon": false,
    "The Lighthouse of Alexandria": false,
  }),
  //8
  History(
      "Who is known for being the first woman to fly solo across the Atlantic Ocean?",
      {
        "Bessie Coleman": false,
        "Amelia Earhart": false,
        "Harriet Quimby": true,
        " Jacqueline Cochran": false,
      }),
  History("Who was the first Emperor of the Roman Empire?", {
    "Julius Caesar": false,
    "Nero": false,
    "Augustus": true,
    "Constantine the Great": false,
  }),
];

List<Geographic> geographics = [
  Geographic("What is the largest desert in the world?", {
    "Sahara Desert": true,
    "Gobi Desert": false,
    "Amazon Rainforest": false,
    "Antarctica": false,
  }),
  Geographic("Which river is the longest in the world?", {
    "Nile River": false,
    "Amazon River": false,
    "Yangtze River": false,
    "Nile River": true,
  }),
  Geographic("What is the capital of Japan?", {
    "Beijing": false,
    "Seoul": false,
    "Shanghai": false,
    "Tokyo": true,
  }),
  Geographic("Which mountain is the highest peak in the world?", {
    "Mount Kilimanjaro": false,
    "Mount McKinley": false,
    "Mount Everest": true,
    "Mount Fuji": false,
  }),
  Geographic("Which country is known as the Land of the Rising Sun?", {
    "China": false,
    "South Korea": false,
    "Japan": true,
    "Thailand": false,
  }),
  Geographic("What is the largest ocean on Earth?", {
    "Indian Ocean": false,
    "Atlantic Ocean": false,
    "Arctic Ocean": false,
    "Pacific Ocean": true,
  }),
  Geographic("Which continent is the least populous in the world?", {
    "Africa": false,
    "Asia": false,
    "Antarctica": true,
    "Europe": false,
  }),
  Geographic("What is the capital of Australia?", {
    "Sydney": false,
    "Melbourne": false,
    "Canberra": true,
    "Brisbane": false,
  }),
  Geographic(
      "Which country is known for its famous fjords and stunning natural landscapes?",
      {
        "Iceland": false,
        "Greenland": false,
        "Norway": true,
        "Sweden": false,
      }),
  Geographic("What is the world's largest tropical rainforest?", {
    "Congo Rainforest": false,
    "Amazon Rainforest": true,
    "Sahara Desert": false,
    "Gobi Desert": false,
  }),
];

List<Math> maths = [
  Math("What is the result of 2 + 2?", {
    "3": false,
    "4": true,
    "5": false,
    "6": false,
  }),
  Math(
      "If a triangle has a right angle, what is the name for that type of triangle?",
      {
        "Isosceles": false,
        "Scalene": false,
        "Equilateral": false,
        "Right Triangle": true,
      }),
  Math("What is the value of π (pi) approximately equal to?", {
    "3.14": true,
    "2.72": false,
    "1.61": false,
    "4.20": false,
  }),
  Math(
      "If you have 3 apples and you eat 1, how many apples do you have left?", {
    "0": false,
    "1": false,
    "2": true,
    "3": false,
  }),
  Math("What is the square of 5?", {
    "10": false,
    "15": false,
    "25": true,
    "50": false,
  }),
  Math("How many degrees are there in a right angle?", {
    "45": false,
    "90": true,
    "180": false,
    "360": false,
  }),
  Math("What is the value of 6 multiplied by 8?", {
    "36": false,
    "42": false,
    "48": true,
    "56": false,
  }),
  Math(
      "In a right triangle, what is the side opposite the right angle called?",
      {
        "Hypotenuse": true,
        "Adjacent side": false,
        "Opposite side": false,
        "Base": false,
      }),
  Math("If x = 3 and y = 4, what is the value of x² + y²?", {
    "5": false,
    "7": false,
    "9": true,
    "12": false,
  }),
  Math("What is the sum of the interior angles of a triangle?", {
    "90 degrees": false,
    "180 degrees": true,
    "270 degrees": false,
    "360 degrees": false,
  }),
];
