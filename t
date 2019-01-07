
> zambrojr-engenharia@1.0.0 watch /projects/zambrojr-engenharia
> webpack --progress --watch --config build/webpack.config.dev.js


webpack is watching the files…

Hash: a6fdf5ae70f0abeaa577
Version: webpack 4.28.3
Time: 6865ms
Built at: 01/07/2019 1:37:27 PM
    Asset      Size  Chunks             Chunk Names
bundle.js  1.14 MiB    main  [emitted]  main
Entrypoint main = bundle.js
[0] multi ./src/App.js 28 bytes {main} [built]
[./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./src/index.vue?vue&type=script&lang=js&] ./node_modules/babel-loader/lib??ref--3!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=script&lang=js& 5.4 KiB {main} [built]
[./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/lib/loader.js!./node_modules/vue-loader/lib/index.js?!./src/index.vue?vue&type=style&index=0&lang=css&] ./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/lib/loader.js!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=style&index=0&lang=css& 486 bytes {main} [built] [failed] [1 error]
[./node_modules/style-loader/index.js!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/lib/loader.js!./node_modules/vue-loader/lib/index.js?!./src/index.vue?vue&type=style&index=0&lang=css&] ./node_modules/style-loader!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/lib/loader.js!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=style&index=0&lang=css& 1.62 KiB {main} [built]
[./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./src/index.vue?vue&type=template&id=2964abc9&] ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=template&id=2964abc9& 68.5 KiB {main} [built]
[./node_modules/webpack/buildin/global.js] (webpack)/buildin/global.js 472 bytes {main} [built]
[./src/App.js] 455 bytes {main} [built]
[./src/index.vue] 1.09 KiB {main} [built]
[./src/index.vue?vue&type=script&lang=js&] 352 bytes {main} [built]
[./src/index.vue?vue&type=style&index=0&lang=css&] 622 bytes {main} [built]
[./src/index.vue?vue&type=template&id=2964abc9&] 197 bytes {main} [built]
    + 181 hidden modules

ERROR in ./src/index.vue?vue&type=style&index=0&lang=css& (./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/lib/loader.js!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=style&index=0&lang=css&)
Module build failed (from ./node_modules/sass-loader/lib/loader.js):
Error: Cannot find module 'node-sass'
    at Function.Module._resolveFilename (module.js:476:15)
    at Function.Module._load (module.js:424:25)
    at Module.require (module.js:504:17)
    at require (/projects/zambrojr-engenharia/node_modules/v8-compile-cache/v8-compile-cache.js:159:20)
    at Object.sassLoader (/projects/zambrojr-engenharia/node_modules/sass-loader/lib/loader.js:46:72)
 @ ./src/index.vue?vue&type=style&index=0&lang=css& (./node_modules/style-loader!./node_modules/css-loader/dist/cjs.js!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/sass-loader/lib/loader.js!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=style&index=0&lang=css&) 2:14-270
 @ ./src/index.vue?vue&type=style&index=0&lang=css&
 @ ./src/index.vue
 @ ./src/App.js
 @ multi ./src/App.js

ERROR in ./node_modules/bootstrap-vue/es/components/alert/alert.css (./node_modules/css-loader/dist/cjs.js!./node_modules/sass-loader/lib/loader.js!./node_modules/bootstrap-vue/es/components/alert/alert.css)
Module build failed (from ./node_modules/sass-loader/lib/loader.js):
Error: Cannot find module 'node-sass'
    at Function.Module._resolveFilename (module.js:476:15)
    at Function.Module._load (module.js:424:25)
    at Module.require (module.js:504:17)
    at require (/projects/zambrojr-engenharia/node_modules/v8-compile-cache/v8-compile-cache.js:159:20)
    at Object.sassLoader (/projects/zambrojr-engenharia/node_modules/sass-loader/lib/loader.js:46:72)
 @ ./node_modules/bootstrap-vue/es/components/alert/alert.css 2:14-111
 @ ./node_modules/bootstrap-vue/es/components/alert/alert.js
 @ ./node_modules/bootstrap-vue/es/components/alert/index.js
 @ ./node_modules/bootstrap-vue/es/components/index.js
 @ ./node_modules/bootstrap-vue/es/index.js
 @ ./src/App.js
 @ multi ./src/App.js

ERROR in ./node_modules/bootstrap-vue/es/components/table/table.css (./node_modules/css-loader/dist/cjs.js!./node_modules/sass-loader/lib/loader.js!./node_modules/bootstrap-vue/es/components/table/table.css)
Module build failed (from ./node_modules/sass-loader/lib/loader.js):
Error: Cannot find module 'node-sass'
    at Function.Module._resolveFilename (module.js:476:15)
    at Function.Module._load (module.js:424:25)
    at Module.require (module.js:504:17)
    at require (/projects/zambrojr-engenharia/node_modules/v8-compile-cache/v8-compile-cache.js:159:20)
    at Object.sassLoader (/projects/zambrojr-engenharia/node_modules/sass-loader/lib/loader.js:46:72)
 @ ./node_modules/bootstrap-vue/es/components/table/table.css 2:14-111
 @ ./node_modules/bootstrap-vue/es/components/table/table.js
 @ ./node_modules/bootstrap-vue/es/components/table/index.js
 @ ./node_modules/bootstrap-vue/es/components/index.js
 @ ./node_modules/bootstrap-vue/es/index.js
 @ ./src/App.js
 @ multi ./src/App.js

ERROR in ./node_modules/bootstrap-vue/es/components/form-input/form-input.css (./node_modules/css-loader/dist/cjs.js!./node_modules/sass-loader/lib/loader.js!./node_modules/bootstrap-vue/es/components/form-input/form-input.css)
Module build failed (from ./node_modules/sass-loader/lib/loader.js):
Error: Cannot find module 'node-sass'
    at Function.Module._resolveFilename (module.js:476:15)
    at Function.Module._load (module.js:424:25)
    at Module.require (module.js:504:17)
    at require (/projects/zambrojr-engenharia/node_modules/v8-compile-cache/v8-compile-cache.js:159:20)
    at Object.sassLoader (/projects/zambrojr-engenharia/node_modules/sass-loader/lib/loader.js:46:72)
 @ ./node_modules/bootstrap-vue/es/components/form-input/form-input.css 2:14-116
 @ ./node_modules/bootstrap-vue/es/components/form-input/form-input.js
 @ ./node_modules/bootstrap-vue/es/components/form-input/index.js
 @ ./node_modules/bootstrap-vue/es/components/index.js
 @ ./node_modules/bootstrap-vue/es/index.js
 @ ./src/App.js
 @ multi ./src/App.js

ERROR in ./node_modules/bootstrap-vue/es/components/dropdown/dropdown.css (./node_modules/css-loader/dist/cjs.js!./node_modules/sass-loader/lib/loader.js!./node_modules/bootstrap-vue/es/components/dropdown/dropdown.css)
Module build failed (from ./node_modules/sass-loader/lib/loader.js):
Error: Cannot find module 'node-sass'
    at Function.Module._resolveFilename (module.js:476:15)
    at Function.Module._load (module.js:424:25)
    at Module.require (module.js:504:17)
    at require (/projects/zambrojr-engenharia/node_modules/v8-compile-cache/v8-compile-cache.js:159:20)
    at Object.sassLoader (/projects/zambrojr-engenharia/node_modules/sass-loader/lib/loader.js:46:72)
 @ ./node_modules/bootstrap-vue/es/components/dropdown/dropdown.css 2:14-114
 @ ./node_modules/bootstrap-vue/es/components/dropdown/dropdown.js
 @ ./node_modules/bootstrap-vue/es/components/dropdown/index.js
 @ ./node_modules/bootstrap-vue/es/components/index.js
 @ ./node_modules/bootstrap-vue/es/index.js
 @ ./src/App.js
 @ multi ./src/App.js

ERROR in ./src/index.vue?vue&type=script&lang=js& (./node_modules/babel-loader/lib??ref--3!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=script&lang=js&)
Module not found: Error: Can't resolve 'vue-grid-layout' in '/projects/zambrojr-engenharia/src'
 @ ./src/index.vue?vue&type=script&lang=js& (./node_modules/babel-loader/lib??ref--3!./node_modules/vue-loader/lib??vue-loader-options!./src/index.vue?vue&type=script&lang=js&) 643:0-44 735:16-29 736:14-27
 @ ./src/index.vue?vue&type=script&lang=js&
 @ ./src/index.vue
 @ ./src/App.js
 @ multi ./src/App.js
