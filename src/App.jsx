import { Box } from '@mui/material';
import { APP_BAR_HEIGHT, APP_DRAWER_WIDTH } from 'common/constants';
import AppContent from 'components/AppContent';
import AppDrawer from 'components/AppDrawer';
import AppFooter from 'components/AppFooter';
import AppHeader from 'components/AppHeader';
import React from 'react';
import { useSelector } from 'react-redux';

const transitionClose = (theme) =>
  theme.transitions.create('margin', {
    easing: theme.transitions.easing.easeOut,
    duration: theme.transitions.duration.enteringScreen,
  });
const transitionOpen = (theme) =>
  theme.transitions.create('margin', {
    easing: theme.transitions.easing.sharp,
    duration: theme.transitions.duration.leavingScreen,
  });

function App() {
  const isDrawerOpen = useSelector((state) => state.drawer.isOpen);

  return (
    <Box sx={{ display: 'flex' }}>
      <AppHeader />
      <AppDrawer />
      <Box
        sx={{
          flexGrow: 1,
          marginLeft: isDrawerOpen ? '0px' : `-${APP_DRAWER_WIDTH}px`,
          marginTop: `${APP_BAR_HEIGHT}px`,
          padding: 3,
          transition: isDrawerOpen ? transitionClose : transitionOpen,
        }}
      >
        <AppContent />
        <AppFooter />
      </Box>
    </Box>
  );
}

export default App;
