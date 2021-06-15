import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('from-input');
  if (addressInput) {
    places({ container: addressInput });
  }
  const addressInput2 = document.getElementById('create-input');
  if (addressInput2) {
    places({ container: addressInput2 });
  }
};

export { initAutocomplete };
