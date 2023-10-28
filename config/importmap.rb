# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true

# DaisyUI
pin 'daisyui', to: 'https://ga.jspm.io/npm:daisyui@3.9.2/src/index.js'
pin 'buffer', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/buffer.js'
pin 'camelcase-css', to: 'https://ga.jspm.io/npm:camelcase-css@2.0.1/index-es5.js'
pin 'colord', to: 'https://ga.jspm.io/npm:colord@2.9.3/index.js'
pin 'colord/plugins/hwb', to: 'https://ga.jspm.io/npm:colord@2.9.3/plugins/hwb.js'
pin 'colord/plugins/lab', to: 'https://ga.jspm.io/npm:colord@2.9.3/plugins/lab.js'
pin 'colord/plugins/lch', to: 'https://ga.jspm.io/npm:colord@2.9.3/plugins/lch.js'
pin 'colord/plugins/mix', to: 'https://ga.jspm.io/npm:colord@2.9.3/plugins/mix.js'
pin 'colord/plugins/names', to: 'https://ga.jspm.io/npm:colord@2.9.3/plugins/names.js'
pin 'colord/plugins/xyz', to: 'https://ga.jspm.io/npm:colord@2.9.3/plugins/xyz.js'
pin 'css-selector-tokenizer', to: 'https://ga.jspm.io/npm:css-selector-tokenizer@0.8.0/lib/index.js'
pin 'cssesc', to: 'https://ga.jspm.io/npm:cssesc@3.0.0/cssesc.js'
pin 'fastparse', to: 'https://ga.jspm.io/npm:fastparse@1.1.2/lib/Parser.js'
pin 'fs', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/fs.js'
pin 'nanoid/non-secure', to: 'https://ga.jspm.io/npm:nanoid@3.3.6/non-secure/index.cjs'
pin 'path', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/path.js'
pin 'picocolors', to: 'https://ga.jspm.io/npm:picocolors@1.0.0/picocolors.browser.js'
pin 'postcss', to: 'https://ga.jspm.io/npm:postcss@8.4.31/lib/postcss.js'
pin 'postcss-js', to: 'https://ga.jspm.io/npm:postcss-js@4.0.1/index.js'
pin 'process', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/process-production.js'
pin 'source-map-js', to: 'https://ga.jspm.io/npm:source-map-js@1.0.2/source-map.js'
pin 'tailwindcss/colors', to: 'https://ga.jspm.io/npm:tailwindcss@3.3.3/colors.js'
pin 'tailwindcss/plugin', to: 'https://ga.jspm.io/npm:tailwindcss@3.3.3/plugin.js'
pin 'url', to: 'https://ga.jspm.io/npm:@jspm/core@2.0.1/nodelibs/browser/url.js'
pin '@tailwindcss/forms', to: 'https://ga.jspm.io/npm:@tailwindcss/forms@0.5.6/src/index.js'
pin 'mini-svg-data-uri', to: 'https://ga.jspm.io/npm:mini-svg-data-uri@1.4.4/index.js'
pin 'tailwindcss/defaultTheme', to: 'https://ga.jspm.io/npm:tailwindcss@3.3.3/defaultTheme.js'
pin '@tailwindcss/aspect-ratio', to: 'https://ga.jspm.io/npm:@tailwindcss/aspect-ratio@0.4.2/src/index.js'
pin '@tailwindcss/typography', to: 'https://ga.jspm.io/npm:@tailwindcss/typography@0.5.10/src/index.js'
pin 'lodash.castarray', to: 'https://ga.jspm.io/npm:lodash.castarray@4.4.0/index.js'
pin 'lodash.isplainobject', to: 'https://ga.jspm.io/npm:lodash.isplainobject@4.0.6/index.js'
pin 'lodash.merge', to: 'https://ga.jspm.io/npm:lodash.merge@4.6.2/index.js'
pin 'postcss-selector-parser', to: 'https://ga.jspm.io/npm:postcss-selector-parser@6.0.10/dist/index.js'
pin 'util-deprecate', to: 'https://ga.jspm.io/npm:util-deprecate@1.0.2/browser.js'
pin '@tailwindcss/container-queries', to: 'https://ga.jspm.io/npm:@tailwindcss/container-queries@0.1.1/dist/index.js'
