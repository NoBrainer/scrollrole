import { HEADER_COMPONENTS } from 'common/constants';
import Choice, { ChoicePropType } from 'components/rules/Choice';
import BasicWrapper from 'components/scaffolding/BasicWrapper';
import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function Choices({ choices, headerComponent } = {}) {
  if (isEmpty(choices)) return null;

  return (
    <BasicWrapper
      children={choices.map((choice, i) => {
        return Choice({
          ...choice,
          key: `Choice-${i}`,
          headerComponent,
        });
      })}
    />
  );
}

export const ChoicesPropType = PropTypes.arrayOf(ChoicePropType);

Choices.propTypes = {
  choices: ChoicesPropType,
  headerComponent: PropTypes.oneOf(HEADER_COMPONENTS),
};

export default Choices;
