# Ceedling action
1. Setup your project to use [Ceedling](https://github.com/ThrowTheSwitch/Ceedling);
2. Enable `junit_tests_report` plugin at your Ceedling project.yml;
3. Action runs `ceedling test:all`;
4. You can use `build/artifacts/test/report.xml` JUnit report to publish results;

## Example workflow with results publishing
```
name: Test
on:
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout repo
        uses: actions/checkout@v2
      - name: Run tests
        uses: batov/ceedling_action@master
      - name: Publish Unit Test Results
        uses: EnricoMi/publish-unit-test-result-action@v1
        if: always()
        with:
            files: build/artifacts/test/report.xml
```

## Example project
https://github.com/Batov/fsm
