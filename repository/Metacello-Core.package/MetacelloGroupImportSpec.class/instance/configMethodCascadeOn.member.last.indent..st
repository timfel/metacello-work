printing
configMethodCascadeOn: aStream member: aMember last: lastCascade indent: indent
    aStream
        nextPutAll: 'group: ' , self name printString;
        space;
        nextPutAll: 'import: #('.
    self includes do: [ :str | aStream nextPutAll: str printString , ' ' ].
    aStream
        nextPut: $);
        nextPutAll: ' from: ' , self projectSpecName printString.
    lastCascade
        ifTrue: [ aStream nextPut: $. ]
        ifFalse: [ 
            aStream
                nextPut: $;;
                cr ]