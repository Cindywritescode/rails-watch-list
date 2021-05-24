import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Love movie ?", "Save your favourite movie in the list", "Tell us what you like"],
    typeSpeed: 70,
    loop: true
  });
}

export { loadDynamicBannerText };
