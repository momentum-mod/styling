// Wish we didn't need any build tooling for this, but there's no way to
// import a JSON file in a local browser page, so I'm using Vite for a simple
// dev server. https://github.com/tc39/proposal-json-modules, we need you!!
export default {
  publicDir: './',
  build: {
    rollupOptions: {
      input: {
        app: './preview.html'
      }
    }
  },
  server: {
    open: '/preview.html'
  }
};
