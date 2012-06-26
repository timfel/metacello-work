api spec callbacks
groupForVersion: groupName import: aStringOrCollection from: projectSpecName
    | spec |
    spec := self project groupImportSpec
        name: groupName;
        projectSpecName: projectSpecName;
        includes: aStringOrCollection;
        yourself.
    self root packages import: spec