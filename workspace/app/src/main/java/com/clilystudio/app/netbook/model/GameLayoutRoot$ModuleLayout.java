package com.clilystudio.app.netbook.model;

public class GameLayoutRoot$ModuleLayout {
    private GameLayoutRoot.ModuleLayout.ActivityItem activity;
    private GameGroupItem gameGroup;
    private String id;
    private String module;
    private String title;

    public GameLayoutRoot.ModuleLayout.ActivityItem getActivity() {
        return this.activity;
    }

    public GameGroupItem getGameGroup() {
        return this.gameGroup;
    }

    public String getId() {
        return this.id;
    }

    public String getModule() {
        return this.module;
    }

    public String getTitle() {
        return this.title;
    }

    public ModuleType getType() {
        for (ModuleType localModuleType : ModuleType.values())
            if (localModuleType.getName().equals(this.module))
                return localModuleType;
        throw new RuntimeException("module " + this.module + " not valid");
    }

    public void setGameGroup(GameGroupItem paramGameGroupItem) {
        this.gameGroup = paramGameGroupItem;
    }

    public void setId(String paramString) {
        this.id = paramString;
    }

    public void setModule(String paramString) {
        this.module = paramString;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.GameLayoutRoot.ModuleLayout
 * JD-Core Version:    0.6.2
 */