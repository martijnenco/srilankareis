// const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './config/initializers/*.rb',
    './public/*.html',
    `${process.env.SIMPLE_FORM_TAILWIND_DIR}/**/*.rb`,
  ],
  theme: {
    extend: {
      fontFamily: {
        // sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      lineClamp: {
        ...[...Array(20).keys()].reduce((acc, i) => ({ ...acc, [i + 1]: i + 1 }), {}),
      },
    },
  },
  daisyui: {
    darkTheme: 'business',
    themes: [
      "corporate", // light theme // first one will be the default theme
      "business", // dark theme
      {
      //   mytheme: {
      //     "base-100":  "#1d232a",

      //     "primary":   "#641ae6",
      //     "secondary": "#d926a9",
      //     "accent":    "#1fb2a6",
      //     "neutral":   "#2a323c",
      //     "info":      "#3abff8",
      //     "success":   "#36d399",
      //     "warning":   "#fbbd23",
      //     "error":     "#f87272",
        // },
      },
    ],
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/aspect-ratio'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
    require("daisyui"),
  ]
}
