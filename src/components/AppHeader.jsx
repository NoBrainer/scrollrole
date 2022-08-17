import { ChevronLeft, Menu } from '@mui/icons-material';
import { AppBar, IconButton, Toolbar } from '@mui/material';
import React from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { Link } from 'react-router-dom';
import logo from 'assets/logo.svg';
import { APP_BAR_HEIGHT, APP_DRAWER_WIDTH } from 'common/constants';
import { closeDrawer, openDrawer, selectIsDrawerOpen } from 'common/redux/slices/drawerSlice';

const transitionOpen = (theme) =>
  theme.transitions.create(['margin', 'width'], {
    easing: theme.transitions.easing.sharp,
    duration: theme.transitions.duration.leavingScreen,
  });

const transitionClose = (theme) =>
  theme.transitions.create(['margin', 'width'], {
    easing: theme.transitions.easing.easeOut,
    duration: theme.transitions.duration.enteringScreen,
  });

function AppHeader() {
  const dispatch = useDispatch();
  const isDrawerOpen = useSelector(selectIsDrawerOpen);

  const handleDrawerToggle = () => {
    dispatch(isDrawerOpen ? closeDrawer() : openDrawer());
  };

  return (
    <AppBar
      position='fixed'
      sx={{
        height: `${APP_BAR_HEIGHT}px`,
        marginLeft: isDrawerOpen ? `${APP_DRAWER_WIDTH}px` : null,
        width: isDrawerOpen ? `calc(100% - ${APP_DRAWER_WIDTH}px)` : null,
        transition: isDrawerOpen ? transitionClose : transitionOpen,
      }}
    >
      <Toolbar>
        <IconButton
          color='inherit'
          aria-label='open drawer'
          onClick={handleDrawerToggle}
          edge='start'
          sx={{ marginRight: 2 }}
        >
          {isDrawerOpen ? <ChevronLeft /> : <Menu />}
        </IconButton>
        <Link
          sx={{
            flexBasis: '215px',
            flexDirection: 'column',
            flexGrow: 0,
            flexShrink: 0,
            justifyContent: 'center',
            margin: 'auto 0',
            padding: '0 10px',
          }}
          to='/'
        >
          <img src={logo} alt='ScrollRole logo' style={{ height: `70px` }} />
        </Link>
      </Toolbar>
    </AppBar>
  );
}

export default AppHeader;
