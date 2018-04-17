// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
class CModRegistry extends CModFactory {
    protected function createMods() {
        // add mod creation calls here, like this:
        //
        // add(modCreate_<ModName>());
        // ...

        add(modCreate_RandomEncounters());
        add(modCreate_VolumetricCloudsMod());
    }
}
// ----------------------------------------------------------------------------
// ----------------------------------------------------------------------------
