import { clone, find } from 'lodash';
import { useEffect, useReducer } from 'react';
import { useLocation } from 'react-router-dom';
import { PAGE_IDS, SECTION_IDS } from 'common/constants';

// Helper function to build the URL based on pageId and sectionId
export const buildUrl = (pageId, sectionId) => {
  return sectionId ? `/${pageId}/${sectionId}` : `/${pageId}`;
};

// Custom hook for the pageState object, based on location
export function usePageState() {
  const location = useLocation();
  const reducer = (state, updates) => {
    let hasChanged = false;
    const newState = clone(state);
    for (const key in updates) {
      if (state[key] !== updates[key]) {
        hasChanged = true;
        newState[key] = updates[key];
      }
    }
    return hasChanged ? newState : state;
  };
  const [pageState, setPageState] = useReducer(reducer, determinePageState(location));

  // Update pageState when location changes
  useEffect(() => {
    setPageState(determinePageState(location));
  }, [location]);

  return [pageState, setPageState];

  function determinePageState(location) {
    const pageId =
      find(PAGE_IDS, (_pageId) => {
        return location.pathname.startsWith(`/${_pageId}`);
      }) || 'home';
    const sectionId =
      find(SECTION_IDS[pageId], (_sectionId) => {
        return location.pathname.startsWith(`/${pageId}/${_sectionId}`);
      }) || null;
    return { pageId, sectionId };
  }
}
