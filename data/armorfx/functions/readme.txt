GENERAL USE INFO

dependencies:
- gssen
- pdata
- invtr



FXEntry: {
    internal: {
        armor: Parts<StateInfo>
    }
}

Parts<T>: {
    helmet? T
    chestplate? T
    leggings? T
    boots? T
}

StateInfo: {
    id: string
    modifiers[]: {
        name: string
        guuid: guuid
    }
}


BUGS
- if keepinventory is on, armor stays on but player modifiers are reset.