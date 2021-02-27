module.exports = {
  /*
   ** Headers of the page
   */
  head: {
    title: "covid-test-frontend",
    meta: [
      { charset: "utf-8" },
      { name: "viewport", content: "width=device-width, initial-scale=1" },
      {
        hid: "description",
        name: "description",
        content: "Covid test front end"
      }
    ],
    link: [{ rel: "icon", type: "image/x-icon", href: "/favicon.ico" }]
  },
  /*
   ** Customize the progress bar color
   */
  loading: { color: "#3B8070" },
  /*
   ** Build configuration
   */
  build: {
    /*
     ** Run ESLint on save
     */
    extend(config, { isDev, isClient }) {
      if (isDev && isClient) {
        config.module.rules.push({
          enforce: "pre",
          test: /\.(js|vue)$/,
          loader: "eslint-loader",
          exclude: /(node_modules)/
        });
      }
    }
  },
  modules: ["@nuxtjs/vuetify", "@nuxtjs/axios", "@nuxtjs/auth"],
  axios: {
    host: "localhost",
    port: 3000
  },
  auth: {
    endpoints: {
      login: { url: "/login", method: "post", propertyName: "token" },
      logout: { url: "/logout", method: "delete" },
      user: { url: "/user" }
    },
    token: {
      property: false,
      required: true,
      type: "Bearer"
    },
    user: {
      property: false
    }
  }
};
