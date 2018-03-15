import pip

pip.main(['install', 'binarytree'])
pip.main(['install', 'bracketeer'])

from bracketeer import build_bracket

b = build_bracket(
        teamsPath='input/Teams.csv',
        seedsPath='input/NCAATourneySeeds.csv',
        submissionPath='nbs/predictions.csv',
        slotsPath='input/NCAATourneySlots.csv',
        year=2018
)