printing
configMethodBodyOn: aStream hasName: hasName cascading: cascading indent: indent
    | hasCascading hasIncludes |
    hasCascading := cascading.
    hasIncludes := self includes isEmpty not.
    hasIncludes
        ifTrue: [ 
            hasName | hasCascading
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent ].
            aStream nextPutAll: 'import: #('.
            self includes do: [ :str | aStream nextPutAll: str printString , ' ' ].
            aStream nextPut: $) ].
    aStream nextPutAll: ' from: ' , self projectSpecName printString.
    hasCascading
        ifTrue: [ aStream nextPut: $; ]