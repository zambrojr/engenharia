'use strict'
const { VueLoaderPlugin } = require('vue-loader')
module.exports = {
  mode: 'development',
  entry: [
    './src/App.js'
  ],

	output: {
    path: __dirname + "/../public/dist",
		filename: "bundle.js"
	},  
  resolve: {
      alias: {
          'vue$': 'vue/dist/vue.esm.js'
      },
      extensions: ['*', '.js', '.vue', '.json']
  },  
  module: {
    rules: [
      {
        test: /\.vue$/,
        use: 'vue-loader'
      },
      {test: /\.scss?$/, loaders: ['style-loader', 'css-loader', 'sass-loader']},
      {test: /\.css?$/, loaders: ['style-loader', 'css-loader', 'sass-loader']},      
     {
        test: /\.m?js$/,
        exclude: /(node_modules|bower_components)/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: ['@babel/preset-env']
            }
        }

      },      
    ],
    
  },
  plugins: [
    new VueLoaderPlugin()
  ]
}