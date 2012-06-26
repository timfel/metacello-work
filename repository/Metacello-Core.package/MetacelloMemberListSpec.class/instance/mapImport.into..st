private
mapImport: aMemberSpec into: map
    | spec |
    spec := map at: aMemberSpec sourceName ifAbsent: [  ].
    spec == nil
        ifTrue: [ ^ self error: 'Source spec named ' , aMemberSpec sourceName printString , ' not found' ]
        ifFalse: [ 
            | ref |
            ref := spec copy.
            ref projectReference loads: aMemberSpec spec includes.
            ref importNames: aMemberSpec spec includes.
            map at: aMemberSpec name put: ref ]