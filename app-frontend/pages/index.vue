
<template>
  <v-layout>
    <v-flex>
      <v-list>
        <v-list-tile v-for="entry in entries" :key="entry.id">
          <h2>Covid answers</h2>

          <v-list-tile-content>
            <h5>Fever:</h5>
            <p v-if="entry.fever">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>

          <v-list-tile-content>
            <h5>Cough:</h5>
            <p v-if="entry.cough">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>

          <v-list-tile-content>
            <h5>Chest pain:</h5>
            <p v-if="entry.chest_pain">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>
          <v-list-tile-content>
            <h5>Sore throat:</h5>
            <p v-if="entry.sore_throat">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>
          <v-list-tile-content>
            <h5>Air lacking:</h5>
            <p v-if="entry.lack_air">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>

          <v-list-tile-content>
            <h5>Tired:</h5>
            <p v-if="entry.tired">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>

          <v-list-tile-content>
            <h5>Loss of smell:</h5>
            <p v-if="entry.smell">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>

          <v-list-tile-content>
            <h5>Loss of taste:</h5>
            <p v-if="entry.taste">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>
          <v-list-tile-content>
            <h5>Nausea:</h5>
            <p v-if="entry.nausea">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>
          <v-list-tile-content>
            <h5>Body or bone ache:</h5>
            <p v-if="entry.bone_ache">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>

          <v-list-tile-content>
            <h5>Contact with Covid patients:</h5>
            <p v-if="entry.covid_contact">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>
          <v-list-tile-content>
            <h5>Are you medical personel:</h5>
            <p v-if="entry.medical_personel">Yes</p>
            <p v-else>No</p>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-flex>
  </v-layout>
</template>

<script>
export default {
  data() {
    return {
      entries: "",
    };
  },
  methods: {
    async updateExamples() {
      this.entries = await this.$axios.$get("/entries");
    },
  },
};
</script>