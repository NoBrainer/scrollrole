import { createSlice } from '@reduxjs/toolkit';
import defaultConfig from 'assets/config/default.yaml';
import db from 'common/db';
import yaml from 'js-yaml';
import { isEmpty } from 'lodash';

export const rulesSlice = createSlice({
  name: 'rules',
  initialState: {
    rulesList: []
  },
  reducers: {
    // Create
    addRules: (state, { payload: newRules }) => {
      state.rulesList.push(newRules);
    },
    // Delete
    removeRules: (state, { payload: id }) => {
      state.rulesList = state.rulesList.filter((rules) => rules.id !== id);
    },
    // Update
    modifyRules: (state, { payload: updatedRules }) => {
      const rulesToUpdate = state.rulesList.find((rules) => rules.id === updatedRules.id);
      rulesToUpdate.name = updatedRules.name;
      rulesToUpdate.config = updatedRules.config;
    },
    resetRules: (state, { payload: rulesList = [] }) => {
      state.rulesList = rulesList;
    }
  }
});

// Actions
export const { addRules, removeRules, resetRules, modifyRules } = rulesSlice.actions;

// Selectors
export const selectRules = (state) => state.rules.rulesList;

// Thunks
//TODO: Figure out a way for it to be less confusing about these names vs reducer names
// These should be called to make sure we consider the Dexie db state.
export const createNewRules = (name) => {
  return (dispatch) => {
    const newRules = { name };
    db.table('rules')
      .add(newRules)
      .then((id) => {
        const addedRules = { ...newRules, id };
        dispatch(addRules(addedRules));
      });
  };
};
export const loadRules = () => {
  return (dispatch) => {
    loadDefaultRules().then((defaultRules) => {
      db.table('rules')
        .toArray()
        .then((rulesList) => {
          if (isEmpty(rulesList)) {
            // Add default rules to an empty rules list
            const rulesToAdd = { ...defaultRules };
            db.table('rules')
              .add(rulesToAdd)
              .then((id) => {
                rulesToAdd.id = id;
                dispatch(resetRules([rulesToAdd]));
              });
          } else {
            dispatch(resetRules(rulesList));
          }
        });
    });
  };
};
export const updateRules = (id, name, config) => {
  return (dispatch) => {
    db.table('rules')
      .update(id, { name, config })
      .then(() => {
        const updatedRules = { id, name, config };
        dispatch(modifyRules(updatedRules));
      });
  };
};
export const deleteRulesById = (id) => {
  return (dispatch) => {
    db.table('rules')
      .delete(id)
      .then(() => {
        dispatch(removeRules(id));
      });
  };
};

// Helper function
function loadDefaultRules() {
  return new Promise((resolve, reject) => {
    try {
      fetch(defaultConfig)
        .then((r) => r.text())
        .then((yamlText) => {
          const json = yaml.safeLoad(yamlText);
          resolve(json);
        })
        .catch(reject);
    } catch (e) {
      reject(e);
    }
  });
}

export default rulesSlice.reducer;
