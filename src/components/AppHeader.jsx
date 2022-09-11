import { People as PeopleIcon, Settings as SettingsIcon } from '@mui/icons-material';
import { AppBar, Tab, Tabs, Toolbar } from '@mui/material';
import PropTypes from 'prop-types';
import React from 'react';
import { Link } from 'react-router-dom';
import logo from 'assets/logo.svg';
import { APP_BAR_HEIGHT } from 'common/constants';
import { usePageState } from 'common/pageState';
import PagePadder from 'components/scaffolding/PagePadder';

function TabIconLink({ ariaLabel, url, value, children } = {}) {
  return (
    <Tab
      aria-label={ariaLabel}
      sx={{ mr: 2, opacity: 1, padding: 0 }}
      value={value}
      icon={
        <Link
          to={url}
          style={{
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            minHeight: `${APP_BAR_HEIGHT}px`,
            minWidth: `${APP_BAR_HEIGHT}px`,
          }}
        >
          {children}
        </Link>
      }
      // icon={<>{children}</>}
    />
  );
}

TabIconLink.propTypes = {
  ariaLabel: PropTypes.string.isRequired,
  children: PropTypes.node.isRequired,
  url: PropTypes.string.isRequired,
  value: PropTypes.number.isRequired,
};

const TAB_VALUE_MAP = {
  characters: 1,
  rules: 2,
};

function AppHeader() {
  const [pageState] = usePageState();

  const onTabChange = (e) => {
    console.log(`~ onTabChange(%o)`, e);
    // TODO: figure out if we want to use this handler or just do things with Links
  };

  return (
    <AppBar position='relative' sx={{ height: `${APP_BAR_HEIGHT}px` }}>
      <Toolbar>
        <PagePadder>
          <Tabs value={TAB_VALUE_MAP[pageState.pageId] || 0} onChange={onTabChange}>
            <Tab
              aria-label='home'
              value={0}
              icon={
                <Link to='/'>
                  <img src={logo} alt='ScrollRole logo' style={{ height: `${APP_BAR_HEIGHT}px` }} />
                </Link>
              }
            />
            <TabIconLink ariaLabel='character builder' url='/characters' value={1}>
              <PeopleIcon />
            </TabIconLink>
            <TabIconLink ariaLabel='rules customizer' url='/rules' value={2}>
              <SettingsIcon />
            </TabIconLink>
          </Tabs>
        </PagePadder>
      </Toolbar>
    </AppBar>
  );
}

export default AppHeader;
