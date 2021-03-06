operations
performLoad
  | displayString spec |
  spec := self projectSpec.
  displayString := 'Project: ' , spec name.
  spec versionString ~~ nil
    ifTrue: [ displayString := displayString , ' ' , spec versionString ].
  Transcript
    cr;
    show: displayString.
  self hasOverride
    ifTrue: [ 
      | override |
      override := self overrideProjectSpec copy.
      override mergeScriptLoads: spec.
      override loadVersion: nil ]
    ifFalse: [ 
      spec
        loadVersion:
          (self useDetermineVersionForLoad
            ifTrue: [ spec determineCurrentVersionForLoad ]
            ifFalse: [ spec versionOrNil ]) ]