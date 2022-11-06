def aws_codebuild(String project, String tag) {

    echo "Triggering AWS codebuild jobs."
     awsCodeBuild artifactEncryptionDisabledOverride: '', artifactLocationOverride: '', artifactNameOverride: '', artifactNamespaceOverride: '', artifactPackagingOverride: '', artifactPathOverride: '', artifactTypeOverride: '', awsAccessKey: '', awsSecretKey: '', buildSpecFile: '', buildTimeoutOverride: '', cacheLocationOverride: '', cacheModesOverride: '', cacheTypeOverride: '', certificateOverride: '', cloudWatchLogsGroupNameOverride: '', cloudWatchLogsStatusOverride: '', cloudWatchLogsStreamNameOverride: '', computeTypeOverride: '', credentialsId: 'awscodebuild', credentialsType: 'jenkins', cwlStreamingDisabled: '', downloadArtifacts: 'false', downloadArtifactsRelativePath: '', envParameters: '', envVariables: "[ { tag, ${tag} } ]", environmentTypeOverride: '', exceptionFailureMode: '', gitCloneDepthOverride: '', imageOverride: '', insecureSslOverride: '', localSourcePath: '', overrideArtifactName: '', privilegedModeOverride: '', projectName: "${project}", proxyHost: '', proxyPort: '', region: 'ap-south-1', reportBuildStatusOverride: '', s3LogsEncryptionDisabledOverride: '', s3LogsLocationOverride: '', s3LogsStatusOverride: '', secondaryArtifactsOverride: '', secondarySourcesOverride: '', secondarySourcesVersionOverride: '', serviceRoleOverride: '', sourceControlType: 'jenkins', sourceLocationOverride: '', sourceTypeOverride: '', sourceVersion: '', sseAlgorithm: '', workspaceExcludes: '', workspaceIncludes: '', workspaceSubdir: ''

}

return this
