# 🛠️ Environments
- `Dev` application will target our local backend and will only be used for local development and tests, which means this application will never be pushed to any store.

- `UAT` (User Acceptance Testing) application will target our UAT backend and will be used by Product Owners to test and validate tickets. UAT app will be pushed to the “internal testing” channels

- `Prod` (production) application will target our main backends and will be used by every end user

Example ids:

- Prod: `com.example`

- UAT: `com.example.uat`

- Dev: `com.example.dev`

# ⏳ Branching Strategy

I will use [Trunk Based Development](https://trunkbaseddevelopment.com/) as my branching strategy, i.e. a “one branch workflow”. In short i will have a main branch that will always be my “source of truth” and ready to be tested. [more article about trunk base git strategy](https://www.bam.tech/article/the-perfect-git-workflow-for-your-react-native-mobile-app-part-1)

## Development process
Our developments will be done on short-lived feature branches that will then be rebased onto main branch, as described in the following schema:

![alt text](../images/devprocess.jpg)


**Notes:**

- bugfixes that fix UAT bugs should be pushed to main branch exactly the way we do it with feature branches.

## Release process
With trunk-based development it will be easy to deploy commits to our UAT and production environments

- `UAT` - Every change added to the main branch will trigger a UAT release that will be sent to the UAT store   
→ the release will be sent to the stores’ “internal tests” channel (of the UAT app)  
→ a Github Actions workflow will be responsible for tagging the new UAT release version  
→ exception: adding only documentation to the repo should not trigger new releases
- `PROD` - A manual Github Actions workflow will trigger a PROD release that will be sent to the PROD store  
→ this release will be sent to the stores’ “internal tests” channel (of the production app)  
→ Github Actions workflow will be responsible for tagging the new PROD release version

Example Tags
- UAT releases tags `release/uat/x.y.z`
- Prod releases tags `release/prod/x.y.z`

# 🧪 Test
- Unit tests to validate business logic
- Widget tests to validate simple components (widgets)
- Golden widget tests to validate the design system rendering or to make screenshot of global app’s screens
- Coverage test report
- Dart Analyzer

# 📦 Prerequisites Github Secret
This is all base64Encoded files that put into github secrets, below is the command for converting file to base64 using terminal  
> base64 -i sample.jks -o sample.jks.base64
- `ENV`: your env files, contains sensitive information of your app
- `PAT`: your personal access token generated from github.

# 🤖 Android Setup
- `ANDROID_KEY_JKS_BASE64`: An [Android keystore](https://docs.flutter.dev/deployment/android#create-an-upload-keystore), use by playstore to uniquely identify your app, keep the keystore file private; don't check it into public source control!
- `ANDROID_GOOGLE_CLOUD_SERVICE`: [Generate google cloud service file](https://www.skoumal.com/en/generate-json-key-for-google-play-deployment/) its use for uploading apk in playstore
- `ANDROID_GOOGLE_SERVICES`: [Firebase Setup](https://firebase.google.com/docs/flutter/setup?platform=ios) Generate from firebase
- `ANDROID_KEY_PROPERTIES`: key.properties file located in android folder that generated from creating key jks
- `ANDROID_LOCAL_PROPERTIES`: local.properties file located in android folder

# 🍏 iOS Setup
Create certificates, identifiers and profiles with your bundle ID
![alt text](<../images/Screenshot 2024-09-13 185552.png>)

Create provisioning profiles. These provising profiles must be of type “App Store”.
![alt text](<../images/Screenshot 2024-09-13 185746.png>)

Create a Distribution certificate.
![alt text](<../images/Screenshot 2024-09-13 190609.png>)

You need to create an API key that we will use to deploy to AppStore Connect. Head to Developer keys page and add a new key with “App Manager” access (that is needed to deploy an app). Download the private key and make sure you store it safely. You can download the key once!  

Then we need to create a .p12 certificate from previous certificate. To do this you will have to use your local Mac Keychain, as described in this [article](https://calvium.com/how-to-make-a-p12-file/).

Finally we will give iOS build a exportOptions.plist , basically a file that contains a few info and options for our build. The easiest way to create one is to generate one through Xcode: [sample](https://gist.github.com/jethroverganio1997/31d7091fb70991cec7937167fbf08b44)

![alt text](<../images/Screenshot 2024-09-13 191523.png>)

Archive then you can go through all the process until the end where you will ask whether you want to actually deploy the app to the AppStore or just export the archive. Choose the second option. The upper-right selection is important: to generate an archive you need to select your build scheme (UAT / prod) and select 🔨 Any iOS Device .

❗️ Make sure you disable automatic signing from Xcode for your releases configurations otherwise the CI will break:

![alt text](<../images/Screenshot 2024-09-13 191707.png>)
- `IOS_P12_DISTRIBUTION_CERTIFICATE_BASE64`: the p12 certificate we previously created, encoded as a base64 string.
- `IOS_P12_DISTRIBUTION_CERTIFICATE_PASSWORD`: password associated with previously created p12 certificate.
- `IOS_EXPORT_OPTIONS_BASE64`: the exportOptions.plist file created through Xcode archive feature and encoded as a base64 string.
- `APP_STORE_CONNECT_API_KEY_ID`: the identifier of the API key that we created from iOS Users and Access page (see screenshot below).
- `APP_STORE_CONNECT_API_PRIVATE_KEY_BASE64`: the private API key that we created from iOS Users and Access page (see screenshot below).
- `APP_STORE_CONNECT_ISSUER_ID`: the issuer id, a UUID property that is given at the top of Users and Access page (see screenshot below).
- `IOS_RUNNER_LOCAL_KEYCHAIN_PASSWORD`: any string, this is only used for the time of the CI/CD deployment build to create a local keychain on Github Actions runner, so you can put anything there…
- `IOS_DISTRIBUTION_PROVISIONING_PROFILE_BASE64`: Represents the Base64 encoded iOS provisioning profile 

![alt text](<../images/Screenshot 2024-09-13 192443.png>)
# 📱 Huawei Setup
- `HUAWEI_APP_ID`: App Id can be found on App Information.
- `HUAWEI_CLIENT_ID`: Client id can be generated from Connect API
- `HUAWEI_CLIENT_KEY`: Client key can be generated from Connect API

# 💻 Command
- `Ctrl+Shift+V` toggle preview of .md file when using vscode
# 📌 Reference
- [CI/CD for a Flutter app with Github Actions](https://medium.com/steeple-product/ci-cd-for-a-flutter-app-with-github-actions-a-complete-how-to-e8dd60bf209e)
