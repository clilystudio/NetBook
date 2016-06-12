package com.clilystudio.netbook.model;

public class GameLayoutRoot$ModuleLayout {

    private GameLayoutRoot$ModuleLayout$ActivityItem activity;
    private GameGroupItem gameGroup;
    private String id;
    private String module;
    private String title;

    public GameLayoutRoot$ModuleLayout$ActivityItem getActivity() {
        return activity;
    }

    public GameGroupItem getGameGroup() {
        return gameGroup;
    }

    public void setGameGroup(GameGroupItem GameGroupItem1) {
        gameGroup = GameGroupItem1;
    }

    public String getId() {
        return id;
    }

    public void setId(String String1) {
        id = String1;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String String1) {
        module = String1;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String String1) {
        title = String1;
    }

    public ModuleType getType() {
        ModuleType[] ModuleType_1darray1 = ModuleType.values();
        int int2 = ModuleType_1darray1.length;
        int int3 = 0;

        while (int3 < int2) {
            ModuleType ModuleType4 = ModuleType_1darray1[int3];

            if (ModuleType4.getName().equals(module))
                return ModuleType4;
            else
                ++int3;
        }
        throw new RuntimeException(new StringBuilder("module ").append(module).append(" not valid").toString());
    }
}
