/*
 *  BoarischesWatchFace is a Watch Face for a large set of Garmin smart watches.
 *
 *  Copyright (C) 2018  Annabelle Klarl
 *  All rights reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 */

using Toybox.Graphics as Graphics;

// language variables
var minutesWhenToJumpToNextHour = 23;

var hoursCentered = {
	0 =>  false,
	1 =>  false, 
	2 =>  false, 
	3 =>  false, 
	4 =>  false,
	5 =>  false,
	6 =>  false,
	7 =>  false,
	8 =>  false,
	9 =>  false,
	10 => false,
	11 => false		
};

var hoursToText = { 
	1 =>  "eins", 
	2 =>  "zwei", 
	3 =>  "drei", 
	4 =>  "vier",
	5 =>  "fünf",
	6 =>  "sechs",
	7 =>  "sieben", // 6 characters
	8 =>  "acht",
	9 =>  "neun",
	10 => "zehn",
	11 => "elf",
	0 =>  "zwölf"
};

var minutesToSeparator = {
	0 => "",
	1 => "nach",
	2 => "nach",
	3 => "nach",
	4 => "nach",
	5 => "vor halb",
	6 => "",
	7 => "nach halb", // 9 characters
	8 => "vor",
	9 => "",
	10 => "vor",
	11 => "vor"	
};
	
var minutesToText = {
	0 =>  "um",
	1 =>  "fünf",
	2 =>  "zehn",
	3 =>  "viertel",
	4 =>  "zwanzig",
	5 =>  "fünf",
	6 =>  "halb",
	7 =>  "fünf",
	8 =>  "zwanzig",
	9 =>  "dreiviertel", // 11 characters
	10 => "zehn",
	11 => "fünf"	
};

function setHoursCenteredToDefault() {
	hoursCentered = {
		0 =>  false,
		1 =>  false, 
		2 =>  false, 
		3 =>  false, 
		4 =>  false,
		5 =>  false,
		6 =>  false,
		7 =>  false,
		8 =>  false,
		9 =>  false,
		10 => false,
		11 => false	
	};
	return;
}

// date variables
var showDate = false;

// font variables 
var fontS = Graphics.FONT_SMALL;
var fontL = Graphics.FONT_LARGE;
var fontSigns = Graphics.FONT_TINY;
var fontNumbers = Graphics.FONT_XTINY;

// color variables
var backgroundColor = Graphics.COLOR_BLACK;
var minutesColor = Graphics.COLOR_WHITE;
var hoursColor = Graphics.COLOR_RED;

var unactiveDotColor = Graphics.COLOR_WHITE;
var activeDotColor = Graphics.COLOR_RED;

// formatting variables
var justification = Graphics.TEXT_JUSTIFY_CENTER;
	
var dotRadius = 3;
var dotDistance = 2*dotRadius + 10;
var dotY = 32;