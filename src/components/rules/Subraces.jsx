import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';
import Subrace, { SubracePropType } from 'components/rules/Subrace';
import BasicWrapper from 'components/scaffolding/BasicWrapper';

function Subraces({ subraces } = {}) {
  if (isEmpty(subraces)) return null;

  return (
    <BasicWrapper>
      {subraces.map((subrace, i) => (
        <Subrace {...subrace} key={`Subrace-${i}`} />
      ))}
    </BasicWrapper>
  );
}

export const SubracesPropType = PropTypes.arrayOf(SubracePropType);

Subraces.propTypes = {
  subraces: SubracesPropType,
};

export default Subraces;
