android {
    sourceSets {
        main {
            res.srcDirs = [

                    "src/main/res/common"

                    , "src/main/res/${actionLayoutPath}"
            ]
        }
    }
}