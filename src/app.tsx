import {useState} from 'react';
import {
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  View,
} from 'react-native';

import {routes} from './routes';

const styles = StyleSheet.create({
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  sectionTitle: {
    fontSize: 24,
    fontWeight: '600',
  },
  sectionDescription: {
    marginTop: 8,
    fontSize: 18,
    fontWeight: '400',
  },
  highlight: {
    fontWeight: '700',
  },
});

function NavigationBar(): React.JSX.Element {
  function NavigationBarButton(): React.JSX.Element {
    return (
      <View>
        {/* <Icon /> */}
        <Text>홈</Text>
      </View>
    );
  }
  return (
    <SafeAreaView>
      <NavigationBarButton />
    </SafeAreaView>
  );
}

function App(): React.JSX.Element {
  let page = useState('home');
  return (
    <SafeAreaView>
      {/* <View */}
      {routes[page[0].toString].page}
      <NavigationBar />
    </SafeAreaView>
  );
}

export default App;
