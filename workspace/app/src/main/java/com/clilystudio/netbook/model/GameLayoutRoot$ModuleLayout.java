package com.clilystudio.netbook.model;

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

    public void setGameGroup(GameGroupItem paramGameGroupItem) {
        this.gameGroup = paramGameGroupItem;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String paramString) {
        this.id = paramString;
    }

    public String getModule() {
        return this.module;
    }

    public void setModule(String paramString) {
        this.module = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public ModuleType getType() {
        for (ModuleType localModuleType : ModuleType.values())
            if (localModuleType.getName().equals(this.module))
                return localModuleType;
        throw new RuntimeException("module " + this.module + " not valid");
    }
}

