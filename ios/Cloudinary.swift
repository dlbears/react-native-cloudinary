import Cloudinary

@objc(RNCloudinary)
class RNCloudinary: RCTEventEmitter {

    var cloud: CLDCloudinary?

    override func supportedEvents() -> [String]! {
        return ["onStart", "onProgress", "onDone", "onError"]
    }

    @objc(setCloud:apiKey:)
    func setCloud(_ cloudName: String, apiKey: String) -> Void {
        let config = CLDConfiguration(cloudName: cloudName, apiKey: apiKey)
        self.cloud = CLDCloudinary(configuration: config)
    }

    @objc(uploadFile:) 
    func uploadFile(fileUri: String) -> Void {
        if cloud != nil {
            let params = CLDUploadRequestParams().setPublicId("iosTest")
            let uploader = (cloud?.createUploader())!
            let _ = uploader.upload(url: URL(string: fileUri)!, uploadPreset: "nhvmt3gf", params: params, progress: { 
                (progress) in self.sendEvent(withName: "onProgress", body: [ "prog": progress ])
                // Handle progress
                }, completionHandler: { 
                (response, error) in self.sendEvent(withName: "onDone", body: [ "cdRes": response, "cdErr": error ])
                // Handle response
            })
        } else {
            sendEvent(withName: "onError", body: [ "errorMsg": "lost cloud init" ])
        }

    }

}
