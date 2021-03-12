import { NativeModules } from 'react-native';

type CloudinaryType = {
  multiply(a: number, b: number): Promise<number>;
};

const { Cloudinary } = NativeModules;

export default Cloudinary as CloudinaryType;
