<template>
  <div id="app">
    <v-app app>
        <v-toolbar app dark>
          <v-toolbar-title>Auth example</v-toolbar-title>
          <v-spacer />
          <v-btn icon nuxt href="/"><v-icon>home</v-icon></v-btn>
        </v-toolbar>
        <v-main>
          <v-container fluid>
            <nuxt/>
          </v-container>
        </v-main>
    </v-app>
  </div>
</template>