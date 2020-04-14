<template>
    <div id="app">
        <main>
            <div class="header">
                <img class="logo" alt="DN logo" src="./assets/DN_logo_blue.svg">
                <h1>Welcome to the DearNova Quiz!</h1>
                <p>De quiz over vaak gehoorde uitdrukkingen binnen DearNova.</p>
            </div>

            <Quiz/>
        </main>

        <footer>
            &copy; DearNova
        </footer>
    </div>
</template>

<script>
    import Quiz from './components/Quiz.vue'

    export default {
        name: 'App',
        components: {
            Quiz
        }
    }
</script>

<style lang="scss">
    body {
        font-family: Avenir, Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        color: #2c3e50;
        margin: 0;
        margin-top: 60px;
    }

    button {
      display: inline-block;
      padding: 0 10px;
      background-color: #09f;
      border: 1px solid #09f;
      border-radius: 5px;
      color: #fff;
      cursor: pointer;
      font-size: 1rem;
      line-height: 2rem;
      transition: all .3s ease;
    }

    main {
        margin: 0 auto;
        max-width: 1040px;
        width: 100%;

        .header {
            text-align: center;
        }

        .logo {
            height: 50px;
        }
    }

    footer {
        position: absolute;
        bottom: 0;
        width: 100%;
        text-align: center;
        padding: 5px 0;
        color: #1b1b32;
        background: #eeeef0;
        line-height: 1.6;
    }
</style>
