// Wish we didn't need any build tooling for this, but browsers will only won't
// load a local file via `import` (or fetch), so using Vite for its dev server
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
