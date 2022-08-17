import React from 'react';
import { useSelector } from 'react-redux';
import Class from 'components/rules/Class';
import PageWrapper from 'components/scaffolding/PageWrapper';

function RulesForClasses() {
  const rulesList = useSelector((state) => state.rules.rulesList);
  const currentRules = rulesList.length > 0 ? rulesList[0] : {};
  const { classes: currentClasses } = currentRules;

  const renderClasses = () => {
    if (!currentClasses) return `[Loading Classes...]`;
    return currentClasses.map(renderClass);
  };
  const renderClass = (clazz, i) => {
    return <Class key={i} clazz={clazz} summaryId={`class-panel-header-${i}`} />;
  };

  return <PageWrapper title='Rules Customizer - Classes'>{renderClasses()}</PageWrapper>;
}

export default RulesForClasses;
