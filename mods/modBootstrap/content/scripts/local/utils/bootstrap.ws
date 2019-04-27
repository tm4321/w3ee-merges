// ----------------------------------------------------------------------------
// piggybacks player entity for hook on spawning and starting all registered mods
//
class CModBootstrapW3PlayerWitcher extends W3PlayerWitcher {
    private var bootstrap: CModBootstrap;

    event OnSpawned(spawnData: SEntitySpawnData) {
        super.OnSpawned(spawnData);

        if (!bootstrap) {
            bootstrap = new CModBootstrap in this;
            bootstrap.bootstrap("PlayerWitcher", spawnData);
        }
    }
}
// ----------------------------------------------------------------------------
// piggybacks ciri player entity for hook on spawning and starting all registered
// mods
//
class CModBootstrapW3ReplacerCiri extends W3ReplacerCiri {
    private var bootstrap: CModBootstrap;

    event OnSpawned(spawnData: SEntitySpawnData) {
        super.OnSpawned(spawnData);

        if (!bootstrap) {
            bootstrap = new CModBootstrap in this;
            bootstrap.bootstrap("ReplacerCiri", spawnData);
        }
    }
}
// ----------------------------------------------------------------------------
class CModBootstrap {
    protected var modRegistry: CModRegistry;
    protected var log: CModLogger;
    // ------------------------------------------------------------------------
    public function bootstrap(src: String, spawnData: SEntitySpawnData) {
        log = new CModLogger in this;
        log.init('ModBootstrap', MLOG_DEBUG);

        log.info("bootstrap started (" + src + " entity)");
        // create + initialize all registered mods (scripts and entity mods)
        modRegistry = new CModRegistry in this;
        modRegistry.init();

        initMods();
    }
    // ------------------------------------------------------------------------
    private function createEntitymod(path: String) : CEntity {
        var ent : CEntity;
        var template : CEntityTemplate;

        template = (CEntityTemplate)LoadResource(path, true);
        ent = theGame.CreateEntity(template,
            thePlayer.GetWorldPosition(), thePlayer.GetWorldRotation());

        return ent;
    }
    // ------------------------------------------------------------------------
    private function initMods() {
        var mods: array<CMod>;
        var entityMod: CEntityMod;
        var i: int;

        log.info("bootstrapping registered mods...");

        mods = modRegistry.getMods();

        for (i = 0; i < mods.Size(); i += 1) {
            entityMod = (CEntityMod)mods[i];

            if (entityMod) {
                entityMod.setModEntity(createEntitymod(entityMod.getTemplate()));
            }
            mods[i].init();

            // show/log some info about creation
            log.info("spawned mod: " + mods[i].getModInfo());
        }
    }
    // ------------------------------------------------------------------------
}
// ----------------------------------------------------------------------------
abstract class CModFactory {
    private var mods: array<CMod>;

    protected function createMods();

    public final function init() { createMods(); }

    protected final function add(mod: CMod) { mods.PushBack(mod); }

    public final function getMods() : array<CMod> { return mods; }
}
// ----------------------------------------------------------------------------
