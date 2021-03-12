import * as React from 'react';

import { StyleSheet, View, Text } from 'react-native';
import Cloudinary from 'react-native-cloudinary';

export default function App() {
  const [result, setResult] = React.useState<String | undefined>();

  React.useEffect(() => {
    console.log(Cloudinary.setCloud);
    setResult(JSON.stringify(Cloudinary.setCloud, null, 2));
  }, []);

  return (
    <View style={styles.container}>
      <Text>Result: {result}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
