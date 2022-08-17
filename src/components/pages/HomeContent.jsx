import { Link, Typography } from '@mui/material';
import React from 'react';
import { Link as RouterLink } from 'react-router-dom';
import BasicCard from 'components/scaffolding/BasicCard';
import PageWrapper from 'components/scaffolding/PageWrapper';

function HomeContent() {
  return (
    <PageWrapper title='Welcome to ScrollRole!'>
      <BasicCard>
        <Typography paragraph={true}>
          ScrollRole is a website for building fifth edition (5e) Dungeons and Dragons characters while following all
          terms of the Open Gaming License in the System Reference Document (
          <Link
            href='http://dnd.wizards.com/articles/features/systems-reference-document-srd'
            rel='noopener'
            target='_blank'
          >
            SRD
          </Link>
          ).
        </Typography>
        <Typography paragraph={true}>
          To prevent the stale experience of only using the limited content in the SRD, you will have two options:
        </Typography>
        <ul>
          <li>
            Disable rules restrictions in the <RouterLink to='/characters'>Character Builder</RouterLink>, so you can
            make whatever changes you want; Or
          </li>
          <li>
            <RouterLink to='/rules'>Customize your own rules</RouterLink> and use them in the Character Builder.
          </li>
        </ul>
      </BasicCard>
    </PageWrapper>
  );
}

export default HomeContent;
