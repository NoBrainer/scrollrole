import BasicCard from 'components/scaffolding/BasicCard';
import PageWrapper from 'components/scaffolding/PageWrapper';
import React from 'react';
import { useSelector } from 'react-redux';

function RulesIntroduction() {
  const rulesList = useSelector((state) => state.rules.rulesList);

  // TODO: Use these rules
  console.log(rulesList);

  const renderIntroduction = () => {
    return <BasicCard>{rulesList ? `[UNDER CONSTRUCTION]` : `[Loading...]`}</BasicCard>;
  };

  return <PageWrapper title='Rules Customizer - Introduction'>{renderIntroduction()}</PageWrapper>;
}

export default RulesIntroduction;
