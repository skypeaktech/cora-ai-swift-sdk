# CORA AI SDK – Swift Package

This repository hosts the [Swift Package Manager (SPM)](https://swift.org/package-manager/) manifest for the **CORA AI SDK**, allowing iOS clients to integrate the SDK using a precompiled binary (`XCFramework`).

> 📦 This package uses a binary distribution and requires Basic Authentication.

---

## 🚀 Quick Start

### 1. Add CORA SDK to Your Xcode Project

Using **Xcode UI**:

1. Open your project in Xcode.
2. Navigate to **File > Add Packages...**
3. Enter the repository URL:
[https://gitlab.skypeaktech.com/cora/cora-ai-swift-sdk](https://gitlab.skypeaktech.com/cora/cora-ai-swift-sdk)

4. Choose the latest available version (e.g. `2.0.8`) and press **Add Package**.

---

## 🛡️ Authentication Setup (Required)

The binary framework is hosted in a **private Artifact Registry** and requires **Basic Auth** to be downloaded.

You must configure a `.netrc` file on your development machine to allow Xcode to fetch the binary:

1. Obtain your base64-encoded service account key
2. Add to `~/.netrc`

Create or edit a file at `~/.netrc` with the following content:

```netrc
machine us-central1-maven.pkg.dev
  login _json_key_base64
  password <YOUR_BASE64_ENCODED_JSON_KEY>
```

> 🛑 Do **not** check this file into version control.

---

## 📦 Package Details

* **Package Name:** `CoraSDK`
* **Minimum iOS Version:** iOS 13

You can find this information in the [Package.swift](./Package.swift) file in this repository.

---

<!-- ## 📖 Example Usage

Once integrated, you can import the SDK into your Swift files:

```swift
import CoraSDK

// Example usage (replace with actual API)
let client = CoraClient()
client.doSomethingSmart()
```

Documentation for API usage is available here:
👉 [**CORA SDK Documentation**](https://your-docs-link.com) <!-- Replace with actual link -->

--- -->

## 🛠 Troubleshooting

* Ensure your `.netrc` is correctly configured and readable (`chmod 600 ~/.netrc`).
* If builds fail with `403` or `Unauthorized`, double-check the base64 credentials and that the service account has read permissions on the Artifact Registry.

---

## 📬 Support

For questions or integration support, please contact:
📧 **[jmorales@skypeaktech.com](mailto:jmorales@skypeaktech.com)**

<!-- ---

## 📝 License

This SDK is proprietary and subject to the terms of use provided by **Sky Peak Technologies**. Contact your account representative for licensing details.

```

---

Let me know if you'd like to add a `LICENSE` file or GitHub Actions CI to validate future releases (e.g., checksum correctness or `Package.swift` linting). -->
```
