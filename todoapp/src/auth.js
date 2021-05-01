import { AppConfig, UserSession, showConnect } from '@stacks/connect';
import { Person } from '@stacks/profile';

const appConfig = new AppConfig(['store_write', 'publish_data']);

export const userSession = new UserSession({ appConfig });

export function authenticate() {
  showConnect({
    appDetails: {
      name: 'Todos',
      icon: window.location.origin + '/logo.svg',
    },
    redirectTo: '/',
    finished: () => {
      window.location.reload();
    },
    userSession: userSession,
  });
}

export function getUserData() {
  console.log('User Session is getting Data');
  console.time('User Session Started :');
  const loadedData = userSession.loadUserData();
  console.timeEnd();
  console.timeLog('User Session Started :');
  return loadedData;
}

export function getPerson() {
  console.log('Get Person is executed');
  console.time('Get Person has started ');
  const person = new Person(getUserData().profile);
  console.timeEnd();
  console.timeLog('Get Person has started')
  return person;
}
