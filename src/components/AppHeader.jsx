import { AppBar, Toolbar } from '@mui/material';
import React from 'react';
import { Link } from 'react-router-dom';
import logo from 'assets/logo.svg';
import { APP_BAR_HEIGHT } from 'common/constants';
import PagePadder from 'components/scaffolding/PagePadder';

function AppHeader() {
  return (
    <AppBar position='relative' sx={{ height: `${APP_BAR_HEIGHT}px` }}>
      <Toolbar>
        <PagePadder>
          <Link to='/'>
            <img src={logo} alt='ScrollRole logo' style={{ height: `70px` }} />
          </Link>
        </PagePadder>
      </Toolbar>
    </AppBar>
  );
}

export default AppHeader;
