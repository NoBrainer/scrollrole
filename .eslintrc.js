module.exports = {
  // General configuration
  env: {
    browser: true,
    commonjs: true,
    es2021: true,
    node: true,
  },
  extends: ['prettier'],
  parserOptions: {
    ecmaFeatures: {
      jsx: true,
    },
    ecmaVersion: 'latest',
  },
  plugins: ['react', 'import'],
  rules: {
    'import/order': [
      'error',
      {
        alphabetize: { order: 'asc' },
        groups: [
          ['builtin', 'external'],
          ['index', 'internal', 'parent', 'sibling'],
        ],
        'newlines-between': 'never',
      },
    ],
  },
  ignorePatterns: ['build/**/*'],
  settings: {
    'import/extensions': ['.js', '.jsx'],
  },

  overrides: [
    // Back-end configuration
    {
      files: ['server/**/*'],
      env: {
        commonjs: true,
        es2021: true,
        node: true,
      },
      extends: ['google', 'prettier'],
      parserOptions: {
        ecmaVersion: 'latest',
      },
      rules: {
        'max-len': ['warn', 120],
        'new-cap': ['error', { capIsNewExceptions: ['Router'] }],
        'require-jsdoc': 'off',
      },
    },
    // Front-end configuration
    {
      files: ['src/**/*.js', 'src/**/*.jsx'],
      env: {
        browser: true,
        es2021: true,
      },
      extends: ['plugin:react/recommended', 'google', 'prettier'],
      parserOptions: {
        ecmaFeatures: {
          jsx: true,
        },
        ecmaVersion: 'latest',
        sourceType: 'module',
      },
      plugins: ['react'],
      rules: {
        'require-jsdoc': 'off',
      },
    },
  ],
};
