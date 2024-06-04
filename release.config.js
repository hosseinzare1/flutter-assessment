const config = {
  branches: ['master'],
  plugins: [
    '@semantic-release/commit-analyzer',
    '@semantic-release/release-notes-generator',
    [
     "semantic-release-pub",
     {
      "cli": "flutter",
      "updateBuildNumber" : true
     }
    ],
    ["@semantic-release/git", {
      "assets": ["dist/*.js", "dist/*.js.map"],
      "message": "chore(release): ${nextRelease.version} [skip ci]\n\n${nextRelease.notes}"
    }],
    '@semantic-release/github'
  ]
};

module.exports = config;