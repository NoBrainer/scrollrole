module.exports = {
  // Back-end Configuration
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
  ignorePatterns: ['src/**/*.js', 'src/**/*.jsx'],
  overrides: [
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
    },
  ],
};
