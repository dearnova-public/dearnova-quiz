<template>
  <div>
    <h1>{{ msg }}</h1>
    <p>
      Description
    </p>

    <div>
      <Question v-for="question in questions" :question="question" :key="question.question"/>
    </div>
  </div>
</template>

<script>
  import * as api from './quiz.api'
  import Question from './Question'

  export default {
    name: 'Quiz',
    components: {
      Question
    },
    props: {
      msg: String
    },
    data() {
      return {
        questions: [],
      }
    },
    created() {
      var self = this;

      api.getQuestions().then((response) => {
        self.questions = response.data;
        console.log(response);
      })
        .catch(function (error) {
          // TODO handle error
          console.warn(error);
        })
    }
  }
</script>

<style scoped>

</style>
