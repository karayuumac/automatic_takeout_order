<p align="center">
  <a href="https://circleci.com/gh/karayuumac/automatic_takeout_order">
    <img src="https://img.shields.io/circleci/build/gh/karayuumac/automatic_takeout_order" alt="Build Status" />
  </a>
  <a href="https://codecov.io/gh/karayuumac/automatic_takeout_order">
    <img src="https://codecov.io/gh/karayuumac/automatic_takeout_order/branch/master/graph/badge.svg?token=gtx7EdVtHV" alt="Coverage Status" />
  </a>
</p>

# automatic_takeout_order
--

持ち帰り予約サービスの利用者アプリ

A user application of takeout-booking service.

# Technology used in this project

- [Flutter](https://flutter.dev/)
- [AWS Amplify](https://aws.amazon.com/jp/amplify/)

## Development Setup

**Make sure that Flutter and amplify-cli are installed in your computer.**

```bash
# install dependencies
flutter pub get

# initialize new project for amplify
amplify setup

# add auth
amplify add auth

# push your change to upstream
amplify push
```