const webpack = require("webpack");

module.exports = (config) => {
  webpack(config, (err, stats) => {
    if(err) {
      console.error(err.stack || err);
      if(err.details) {
        console.error(err.details);
      }
      return;
    }

    const info = stats.toJson();

    if(stats.hasErrors()) {
      info.errors.forEach((x) => {
        console.error(x);
      });
    }

    if(stats.hasWarnings()) {
      info.warnings.forEach((x) => {
        console.warn(x);
      });
    }
  });
};
