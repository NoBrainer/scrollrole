import Subrace, { SubracePropType } from 'components/rules/Subrace';
import BasicWrapper from 'components/scaffolding/BasicWrapper';
import { isEmpty } from 'lodash';
import PropTypes from 'prop-types';
import React from 'react';

function Subraces({ subraces } = {}) {
  if (isEmpty(subraces)) return null;

  return (
    <BasicWrapper
      children={subraces.map((subrace, i) => {
        return Subrace({
          ...subrace,
          key: `Subrace-${i}`,
        });
      })}
    />
  );
}

export const SubracesPropType = PropTypes.arrayOf(SubracePropType);

Subraces.propTypes = {
  subraces: SubracesPropType,
};

export default Subraces;
