import React, {useState} from 'react';
import {
  Button,
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from 'react-native';

import {routes} from './routes';

const styles = StyleSheet.create({
  sectionContainer: {
    marginTop: 32,
    paddingHorizontal: 24,
  },
  navigationBar: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingTop: 20,
    paddingBottom: 8,
    paddingHorizontal: 36,
    borderWidth: 0.5,
    borderColor: 'rgba(0, 0, 0, 0.3)',
    borderTopRightRadius: 36,
    borderTopLeftRadius: 36,
    borderBottomWidth: 0,
  },
  navigationBarButton: {
    flexDirection: 'column',
    alignItems: 'center',
    width: 42,
    gap: 4,
  },
});

function App(): React.JSX.Element {
  const [page, setPage] = useState('home');

  return (
    // eslint-disable-next-line react-native/no-inline-styles
    <SafeAreaView style={{flex: 1}}>
      {/* eslint-disable-next-line react-native/no-inline-styles */}
      <View style={{flex: 1}}>{routes[page].page}</View>
      <View style={styles.navigationBar}>
        {Object.entries(routes).map(([key, value]) => (
          <TouchableOpacity
            activeOpacity={0.7}
            key={key + 'View'}
            style={styles.navigationBarButton}
            onPressOut={() => setPage(key)}>
            <View
              key={key + 'Icon'}
              style={{width: 28, height: 28, backgroundColor: '#000'}}
            />
            <Text key={key}>{value.title}</Text>
          </TouchableOpacity>
        ))}
      </View>
    </SafeAreaView>
  );
}

export default App;
