<template>
  <v-layout>
    <v-flex>
      <v-alert type="error" :value="error">{{error}}</v-alert>
        <v-card-text>
          <v-form>
            <v-text-field v-model="name" label="Name" />
            <v-text-field v-model="email" label="Email" />
            <v-text-field v-model="id_type" label="ID Type" />
            <v-text-field v-model="personal_id" label="ID" />
            <v-text-field v-model="password" label="Password" type="password" />
            <v-text-field v-model="password" label="Confirm Password" type="password" />
          </v-form>
          <v-card-actions>
            <v-btn @click="register">Sign up</v-btn>
          </v-card-actions>
        </v-card-text>
    </v-flex>
  </v-layout>
</template>

<script>
export default {
  data () {
    return {
        name: '',
        email: '',
        id_type: '',
        personal_id: '',
      password: '',
      error: null
    }
  },
  methods: {
    async register() {
        try {
            await this.$axios.post('signup', {
                
                    user: {
                        name: this.name,
                        email: this.email,
                        id_type: this.id_type,
                        personal_id: this.personal_id,
                        password: this.password
                    }
               
            })
            return redirect('/entries')
        }
        catch (e) {
        this.error = e.response.data.message
        }
    }
  }
}


</script>