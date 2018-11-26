#!/bin/bash
cat <<EOF > tsconfig.json
{
    "compilerOptions": {
        "alwaysStrict": true,
        "charset": "utf8",
        "declaration": false,
        "experimentalDecorators": true,
        "inlineSourceMap": true,
        "inlineSources": true,
        "lib": [
            "es2016",
            "es2017.object",
            "es2017.string"
        ],
        "module": "CommonJS",
        "noEmitOnError": false,
        "noFallthroughCasesInSwitch": true,
        "noImplicitAny": true,
        "noImplicitReturns": true,
        "noImplicitThis": true,
        "noUnusedLocals": true,
        "noUnusedParameters": true,
        "resolveJsonModule": true,
        "strict": true,
        "strictNullChecks": true,
        "target": "ES2018"
    },
    "include": [
        "packages/**/*.ts",
        "tools/**/*.ts"
    ],
    "exclude": [
        "node_modules",
        "packages/@aws-cdk/aws-sns/examples",
        "tools/cfn2ts/test/enrichments",
        "packages/aws-cdk/lib/init-templates"
    ],
    "_generated_by_jsii_": "Generated by jsii - safe to delete, and ideally should be in .gitignore"
}
EOF
node_modules/.bin/tsc -p . "$@"
