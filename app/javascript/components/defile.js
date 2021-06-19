import Typed from 'typed.js';

const loadDynamicText = () => {
  if (document.querySelector('#text-defile')) {
    new Typed('#text-defile', {
      strings: ["Send your projects to the space"],
      typeSpeed: 80,
      delai: 8,
    });
  }
}

export { loadDynamicText };
