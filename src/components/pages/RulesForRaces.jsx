import Race from 'components/rules/Race';
import PageWrapper from 'components/scaffolding/PageWrapper';
import React from 'react';
import { useSelector } from 'react-redux';

function RulesForRaces() {
  const rulesList = useSelector((state) => state.rules.rulesList);
  const currentRules = rulesList.length > 0 ? rulesList[0] : {};
  const { races: currentRaces } = currentRules;

  const renderRaces = () => {
    if (!currentRaces) return `[Loading Races...]`;
    return currentRaces.map(renderRace);
  };
  const renderRace = (race, i) => {
    return <Race key={i} race={race} summaryId={`race-panel-header-${i}`} />;
  };

  return <PageWrapper title='Rules Customizer - Races'>{renderRaces()}</PageWrapper>;
}

export default RulesForRaces;
