import ProjectDescription

let project = Project(
    name: "AlertComponentBench",
    targets: [
        .target(
            name: "AlertComponentBench",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.AlertComponentBench",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["AlertComponentBench/Sources/**"],
            resources: ["AlertComponentBench/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "AlertComponentBenchTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AlertComponentBenchTests",
            infoPlist: .default,
            sources: ["AlertComponentBench/Tests/**"],
            resources: [],
            dependencies: [.target(name: "AlertComponentBench")]
        ),
    ]
)
