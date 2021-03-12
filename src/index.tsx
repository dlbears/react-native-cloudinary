import { NativeModules } from 'react-native';

type RNCloudinaryType = {
  setCloud(cloudName: String, apiKey: String): void;
  uploadFile(fileUri: String): void;
};

const { RNCloudinary } = NativeModules;

export default RNCloudinary as RNCloudinaryType;
