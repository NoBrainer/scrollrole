import PropTypes from 'prop-types';
import React from 'react';
import { ProficiencyPropType } from 'components/rules/Proficiencies';
import Paragraphs from 'components/scaffolding/Paragraphs';
import RulesSection from 'components/scaffolding/RulesSection';

// TODO: fix
// eslint-disable-next-line react/prop-types
function Condition({ level, feature, proficiency } = {}) {
  // TODO: implement
  return (
    <RulesSection headerText='Condition'>
      <Paragraphs paragraphs='[Condition Placeholder]' />
    </RulesSection>
  );
}

export const ConditionPropType = PropTypes.shape({
  level: PropTypes.number,
  feature: PropTypes.string,
  proficiency: ProficiencyPropType,
});

Condition.propTypes = ConditionPropType;

export default Condition;
