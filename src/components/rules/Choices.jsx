import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';
import { HEADER_COMPONENTS } from 'common/constants';
import Choice, { ChoicePropType } from 'components/rules/Choice';
import BasicWrapper from 'components/scaffolding/BasicWrapper';

function Choices({ choices, headerComponent } = {}) {
  if (isEmpty(choices)) return null;

  return (
    <BasicWrapper>
      {choices.map((choice, i) => (
        <Choice key={`Choice-${i}`} headerComponent={headerComponent} {...choice} />
      ))}
    </BasicWrapper>
  );
}

export const ChoicesPropType = PropTypes.arrayOf(ChoicePropType);

Choices.propTypes = {
  choices: ChoicesPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default Choices;
