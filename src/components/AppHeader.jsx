import { People as PeopleIcon, Settings as SettingsIcon } from '@mui/icons-material';
import { AppBar, Tab, Tabs, Toolbar } from '@mui/material';
import React, { useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import logo from 'assets/logo.svg';
import { APP_BAR_HEIGHT } from 'common/constants';
import { buildUrl, usePageState } from 'common/pageState';
import PagePadder from 'components/scaffolding/PagePadder';

// TODO: Get better icons from game-icons.net
function AppHeader() {
  const [pageState] = usePageState();
  const navigate = useNavigate();

  const onTabChange = useCallback((e, newValue) => {
    navigate(buildUrl(newValue));
  }, []);

  return (
    <AppBar position='relative' sx={{ height: `${APP_BAR_HEIGHT}px` }}>
      <Toolbar>
        <PagePadder>
          <Tabs value={pageState.pageId || 'home'} onChange={onTabChange}>
            <Tab
              aria-label='home'
              value='home'
              icon={<img src={logo} alt='ScrollRole logo' style={{ height: `${APP_BAR_HEIGHT}px` }} />}
            />
            <Tab aria-label='character builder' value='characters' icon={<PeopleIcon />} />
            <Tab aria-label='rules customizer' value='rules' icon={<SettingsIcon />} />
          </Tabs>
        </PagePadder>
      </Toolbar>
    </AppBar>
  );
}

export default AppHeader;
