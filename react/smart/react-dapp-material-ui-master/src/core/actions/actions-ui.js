import constants from 'core/types';
import Web3      from 'web3';
import axios     from 'axios';

/**
 * openNav - Open the side nav
 */
export function openNav() {
  return {
    type: constants.OPEN_NAV
  };
}

/**
 * closeNav - Close the side nav
 */
export function closeNav() {
  return {
    type: constants.CLOSE_NAV
  };
}

export function initApp() {
  let web3;
  if (typeof web3 !== 'undefined') {
    web3 = new Web3(web3.currentProvider);
  } else {
    // set the provider you want from Web3.providers
    web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:8545"));
  }

  return {
    type: constants.INIT_APP,
    web3 : web3
  }
}

export function initContract() {
  alert('inside initContract!!!!');

  return(dispatch, getState) => {
    axios.get('Adoption.json')
      .then((response) => {
        debugger;

        dispatch(() => {
          return {
            type: types.INIT_CONTRACT,
          }
        })();

        // Get the necessary contract artifact file and instantiate it with truffle-contract.
        var AdoptionArtifact = response.data;
        App.contracts.Adoption = TruffleContract(AdoptionArtifact);

        // Set the provider for our contract.
        App.contracts.Adoption.setProvider(App.web3Provider);

        // Use our contract to retieve and mark the adopted pets.
        return App.markAdopted();
      })
      .catch((error) => {
        console.log('ERROR: ', error)
      })
  }
}
