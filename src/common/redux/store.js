import { configureStore } from '@reduxjs/toolkit';
import drawerReducer from 'common/redux/slices/drawerSlice';
import rulesReducer, { loadRules } from 'common/redux/slices/rulesSlice';

const store = configureStore({
  reducer: {
    drawer: drawerReducer,
    rules: rulesReducer
  }
});

export const initializeStore = () => {
  store.dispatch(loadRules());
};

export default store;
