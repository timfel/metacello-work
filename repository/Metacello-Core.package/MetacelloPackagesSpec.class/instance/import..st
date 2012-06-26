actions
import: aSpec
    self
        addMember:
            (self importMember
                name: aSpec name;
                sourceName: aSpec projectSpecName;
                spec: aSpec;
                yourself)