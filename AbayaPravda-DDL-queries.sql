-- PLAYER TABLE
    "ID": {
            "title": "Id",
            "type": "integer"
        },
        "Name": {
            "title": "Name",
            "minLength": 3,
            "maxLength": 30,
            "type": "string"
        },
        "FullName": {
            "title": "Fullname",
            "minLength": 3,
            "maxLength": 80,
            "type": "string"
        },
        "Age": {
            "title": "Age",
            "exclusiveMinimum": 14,
            "exclusiveMaximum": 60,
            "type": "integer"
        },
        "Height": {
            "title": "Height",
            "exclusiveMinimum": 140,
            "exclusiveMaximum": 220,
            "type": "integer"
        },
        "Weight": {
            "title": "Weight",
            "exclusiveMinimum": 40,
            "exclusiveMaximum": 120,
            "type": "integer"
        },
        "PhotoUrl": {
            "title": "Photourl",
            "minLength": 1,
            "maxLength": 2083,
            "format": "uri",
            "type": "string"
        },
        "Nationality": {
            "title": "Nationality",
            "minLength": 3,
            "maxLength": 50,
            "type": "string"
        },
        "Overall": {
            "title": "Overall",
            "exclusiveMinimum": 20,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "Potential": {
            "title": "Potential",
            "exclusiveMinimum": 20,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "Growth": {
            "title": "Growth",
            "exclusiveMinimum": -1,
            "exclusiveMaximum": 60,
            "type": "integer"
        },
        "TotalStats": {
            "title": "Totalstats",
            "exclusiveMinimum": 50,
            "exclusiveMaximum": 3000,
            "type": "integer"
        },
        "BaseStats": {
            "title": "Basestats",
            "exclusiveMinimum": 50,
            "exclusiveMaximum": 3000,
            "type": "integer"
        },
        "Positions": {
            "title": "Positions",
            "minLength": 2,
            "maxLength": 15,
            "type": "string"
        },
        "BestPosition": {
            "title": "Bestposition",
            "minLength": 2,
            "maxLength": 3,
            "type": "string"
        },
        "Club": {
            "title": "Club",
            "minLength": 3,
            "maxLength": 50,
            "type": "string"
        },
        "ValueEUR": {
            "title": "Valueeur",
            "exclusiveMinimum": -1,
            "type": "integer"
        },
        "WageEUR": {
            "title": "Wageeur",
            "exclusiveMinimum": -1,
            "type": "integer"
        },
        "ReleaseClause": {
            "title": "Releaseclause",
            "exclusiveMinimum": -1,
            "type": "integer"
        },
        "ClubPosition": {
            "title": "Clubposition",
            "maxLength": 3,
            "type": "string"
        },
        "ContractUntil": {
            "title": "Contractuntil",
            "exclusiveMinimum": 2018,
            "exclusiveMaximum": 2030,
            "type": "integer"
        },
        "ClubNumber": {
            "title": "Clubnumber",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "ClubJoined": {
            "title": "Clubjoined",
            "exclusiveMinimum": 1990,
            "exclusiveMaximum": 2021,
            "type": "integer"
        },
        "OnLoad": {
            "title": "Onload",
            "type": "boolean"
        },
        "NationalTeam": {
            "title": "Nationalteam",
            "default": "Not in team",
            "minLength": 3,
            "maxLength": 50,
            "type": "string"
        },
        "NationalPosition": {
            "title": "Nationalposition",
            "maxLength": 3,
            "type": "string"
        },
        "NationalNumber": {
            "title": "Nationalnumber",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "PreferredFoot": {
            "title": "Preferredfoot",
            "anyOf": [
                {
                    "type": "string",
                    "pattern": "^Right$"
                },
                {
                    "type": "string",
                    "pattern": "^Left$"
                }
            ]
        },
        "IntReputation": {
            "title": "Intreputation",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 6,
            "type": "integer"
        },
        "WeakFoot": {
            "title": "Weakfoot",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 6,
            "type": "integer"
        },
        "SkillMoves": {
            "title": "Skillmoves",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 6,
            "type": "integer"
        },
        "AttackingWorkRate": {
            "title": "Attackingworkrate",
            "minLength": 3,
            "maxLength": 10,
            "type": "string"
        },
        "DefensiveWorkRate": {
            "title": "Defensiveworkrate",
            "minLength": 3,
            "maxLength": 10,
            "type": "string"
        },
        "*": {
            "title": "Other columns from 'PaceTotal' to 'GKRating",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 100,
            "type": "integer"
        }
        
        
-- TEAMS TABLE


           "ID": {
            "title": "Id",
            "type": "integer"
        },
       "Name": {
            "title": "Name",
            "type": "string"
        },
        "League": {
            "title": "League",
            "type": "string"
       },
       "LeagueId": {
            "title": "LeagueId",
            "type": "integer"
        },
        "Overall": {
            "title": "Overall",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "Attack": {
            "title": "Attack",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "Midfield": {
            "title": "Midfield",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "Defence": {
            "title": "Defence",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 100,
            "type": "integer"
        },
        "TransferBudget": {
            "title": "Transferbudget",
            "exclusiveMinimum": -1,
            "type": "integer"
        },
        "DomesticPrestige": {
            "title": "Domesticprestige",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 11,
            "type": "integer"
        },
        "IntPrestige": {
            "title": "Intprestige",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 11,
            "type": "integer"
        },
        "Players": {
            "title": "Players",
            "exclusiveMinimum": 0,
            "exclusiveMaximum": 50,
            "type": "integer"
        },
        "StartingAverageAge": {
            "title": "Startingaverageage",
            "exclusiveMinimum": 15,
            "exclusiveMaximum": 40,
            "type": "number"
        },
        "AllTeamAverageAge": {
            "title": "Allteamaverageage",
            "exclusiveMinimum": 15,
            "exclusiveMaximum": 40,
            "type": "number"
        }
        
   
