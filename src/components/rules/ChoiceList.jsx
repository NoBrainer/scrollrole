import { AbilityScoreAdjustmentsPropType } from 'components/rules/AbilityScoreAdjustments';
import { FeaturesPropType } from 'components/rules/Features';
import Paragraphs from 'components/rules/Paragraphs';
import { ProficienciesPropType } from 'components/rules/Proficiencies';
import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function ChoiceList({ items, ordered } = {}) {
  if (isEmpty(items)) return null;

  const renderAbilityScoreAdjustmentItem = ({ ability, modifier } = {}, i) => {
    const sign = modifier > 0 ? '+' : '';
    const text = `${ability} ${sign}${modifier}`;
    return renderStringItem(text, `AbilityScoreAdjustment-${i}`);
  };
  const renderFeatureItem = ({ name, description } = {}, i) => {
    if (!description) return renderStringItem(name, `Feature-${i}`);
    const paragraphs = [name, ...description];
    return (
      <li key={`ChoiceList-Feature-${i}`}>
        <Paragraphs paragraphs={paragraphs} />
      </li>
    );
  };
  const renderProficiencyItem = ({ name, type } = {}, i) => {
    const text = `${type}: ${name}`;
    return renderStringItem(text, `Proficiency-${i}`);
  };
  const renderStringItem = (text, i) => {
    return <li key={`ChoiceList-${i}`}>{text}</li>;
  };
  const renderItem = (item, i) => {
    if (typeof item === 'string') {
      return renderStringItem(item, i);
    }
    const { name, type, ability, modifier } = item;
    if (ability && modifier) {
      return renderAbilityScoreAdjustmentItem(item, i);
    } else if (name && type) {
      return renderProficiencyItem(item, i);
    } else {
      return renderFeatureItem(item, i);
    }
  };
  const renderItems = () => items.map((item, i) => renderItem(item, i));

  if (ordered) {
    return <ol children={renderItems()} />;
  } else {
    return <ul children={renderItems()} />;
  }
}

ChoiceList.propTypes = {
  items: PropTypes.oneOfType([
    AbilityScoreAdjustmentsPropType,
    FeaturesPropType,
    ProficienciesPropType,
    PropTypes.arrayOf(PropTypes.string),
  ]).isRequired,
  ordered: PropTypes.bool,
};

export default ChoiceList;
