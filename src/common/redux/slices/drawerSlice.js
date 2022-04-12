import { createSlice } from '@reduxjs/toolkit';
import { COOKIES } from 'common/constants';
import { deleteCookie, getCookie, setCookie } from 'common/cookies';

export const drawerSlice = createSlice({
  name: 'drawer',
  initialState: {
    isOpen: getCookie(COOKIES.DRAWER) === 'o'
  },
  reducers: {
    closeDrawer: state => {
      if (state.isOpen) {
        deleteCookie(COOKIES.DRAWER);
        state.isOpen = false;
      }
    },
    openDrawer: state => {
      if (!state.isOpen) {
        setCookie(COOKIES.DRAWER, 'o');
        state.isOpen = true;
      }
    }
  }
});

// Actions
export const { closeDrawer, openDrawer } = drawerSlice.actions;

// Selectors
export const selectIsDrawerOpen = (state) => state.drawer.isOpen;

export default drawerSlice.reducer;
