<template>
  <div class="question-component">
    <div class="question">{{ question.question }}</div>
    <div class="answer">
      <button v-if="!answerIsVisible" @click="showAnswer">SHOW ANSWER</button>
      <span v-if="answerIsVisible">{{ question.answer }}</span>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Question',
    props: {
      question: Object
    },
    data() {
      return {
        answerIsVisible: false
      }
    },
    methods: {
      showAnswer() {
        this.answerIsVisible = true;
      }
    }
  }
</script>

<style lang="scss">
  .question-component {
    display: flex;
    justify-content: space-between;
    height: 50px;
    font-size: 1.5em;
    margin: 10px 0;
  }
</style>
