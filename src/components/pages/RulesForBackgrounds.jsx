import Background from 'components/rules/Background';
import PageWrapper from 'components/scaffolding/PageWrapper';
import React from 'react';
import { useSelector } from 'react-redux';

function RulesForBackgrounds() {
  const rulesList = useSelector((state) => state.rules.rulesList);
  const currentRules = rulesList.length > 0 ? rulesList[0] : {};
  const { backgrounds: currentBackgrounds } = currentRules;

  const renderBackgrounds = () => {
    if (!currentBackgrounds) return `[Loading Backgrounds...]`;
    return currentBackgrounds.map(renderBackground);
  };
  const renderBackground = (background, i) => {
    return <Background key={i} background={background} summaryId={`background-panel-header-${i}`} />;
  };

  return <PageWrapper title='Rules Customizer - Backgrounds'>{renderBackgrounds()}</PageWrapper>;
}

export default RulesForBackgrounds;
