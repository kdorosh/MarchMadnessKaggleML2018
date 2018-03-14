import pip

pip.main(['install', 'binarytree'])
pip.main(['install', 'bracketeer'])

from bracketeer import build_bracket

b = build_bracket(
        teamsPath='input/DataFiles/Teams.csv',
        seedsPath='input/Stage2UpdatedDataFiles/NCAATourneySeeds.csv',
        submissionPath='nbs/predictions.csv',
        slotsPath='input/Stage2UpdatedDataFiles/NCAATourneySlots.csv',
        year=2018
)