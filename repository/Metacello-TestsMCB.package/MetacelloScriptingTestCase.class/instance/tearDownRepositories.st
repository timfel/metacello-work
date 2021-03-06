running
tearDownRepositories
    super tearDownRepositories.
    configurationDirectory exists
        ifTrue: [ MetacelloPlatform current recursiveDelete: configurationDirectory ].
    externalDirectory exists
        ifTrue: [ MetacelloPlatform current recursiveDelete: externalDirectory ].
    sampleDirectory exists
        ifTrue: [ MetacelloPlatform current recursiveDelete: sampleDirectory ].
    Smalltalk removeKey: #'Metacello_Configuration_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_Gofer_Test_Repository' ifAbsent: [  ].
    Smalltalk removeKey: #'Metacello_MczConfiguration_Test_Repository' ifAbsent: [  ].
    MCRepositoryGroup default
        removeRepository: externalRepository;
        removeRepository: monticelloRepository;
        removeRepository: mczConfigurationRepository;
        removeRepository: configurationRepository