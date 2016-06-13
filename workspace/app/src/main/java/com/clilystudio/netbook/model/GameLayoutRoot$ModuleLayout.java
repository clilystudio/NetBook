package com.clilystudio.netbook.model;

public class GameLayoutRoot$ModuleLayout {
    private ActivityItem activity;
    private GameGroupItem gameGroup;
    private String id;
    private String module;
    private String title;

    public ActivityItem getActivity() {
        return this.activity;
    }

    public GameGroupItem getGameGroup() {
        return this.gameGroup;
    }

    public void setGameGroup(GameGroupItem gameGroupItem) {
        this.gameGroup = gameGroupItem;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String string) {
        this.id = string;
    }

    public String getModule() {
        return this.module;
    }

    public void setModule(String string) {
        this.module = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public ModuleType getType() {
        for (ModuleType moduleType : ModuleType.values()) {
            if (!moduleType.getName().equals(this.module)) continue;
            return moduleType;
        }
        throw new RuntimeException("module " + this.module + " not valid");
    }
}
