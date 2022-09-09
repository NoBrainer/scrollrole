import { Grid, Link, List, ListItem, Typography } from '@mui/material';
import PropTypes from 'prop-types';
import React, { useState } from 'react';
import BasicWrapper from 'components/scaffolding/BasicWrapper';
import PagePadder from 'components/scaffolding/PagePadder';

const defaultFooterSections = [
  {
    title: 'Credit to Others',
    links: [
      { text: 'Destinie Carbone ~ Logo', href: 'http://rainleaf.studio' },
      { text: 'Game-icons.net ~ Other Icons', href: 'http://game-icons.net' },
      { text: 'More Details', href: 'https://github.com/NoBrainer/scrollrole/wiki/Credit-to-Others' },
    ],
  },
  {
    title: 'Feedback/Bug Reporting',
    links: [
      { text: 'Issue Tracker', href: 'https://github.com/NoBrainer/scrollrole/issues' },
      { text: 'Email the Developer', href: 'mailto:vincent.incarvite@gmail.com' },
    ],
  },
  {
    title: 'Legal Stuff',
    links: [
      { text: 'Privacy Policy', href: 'https://github.com/NoBrainer/scrollrole/wiki/Privacy-Policy' },
      { text: 'Terms of Use', href: 'https://github.com/NoBrainer/scrollrole/wiki/Terms-of-Use' },
    ],
  },
];

function AppFooter(props) {
  const [sections] = useState(props.sections || defaultFooterSections);

  const renderContent = () => {
    return sections.map((section, i) => renderSection(section, i));
  };
  const renderSection = (section, i) => {
    return (
      <Grid item xs={12} sm={6} md={4} key={i} sx={{ py: 0, px: 2 }}>
        <Typography>{section.title}</Typography>
        <List>{renderLinks(section.links)}</List>
      </Grid>
    );
  };
  const renderLinks = (links) => {
    return links.map((link, i) => renderListItem(link, i));
  };
  const renderListItem = (link, i) => {
    return (
      <ListItem key={i}>
        <Link href={link.href} underline='hover' rel='noopener' target='_blank'>
          {link.text}
        </Link>
      </ListItem>
    );
  };

  return (
    <footer>
      <BasicWrapper margin='top'>
        <PagePadder>{renderContent()}</PagePadder>
      </BasicWrapper>
    </footer>
  );
}

AppFooter.propTypes = {
  sections: PropTypes.object,
};

export default AppFooter;
