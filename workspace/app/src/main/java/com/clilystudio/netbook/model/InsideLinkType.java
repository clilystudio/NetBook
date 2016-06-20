package com.clilystudio.netbook.model;

public enum  InsideLinkType {
    GAME("game"),
    POST("post"),
    BOOK("book"),
    BOOKLIST("booklist"),
    LINK("link"),
    OTHER("other"),
    POST_HELP("post-help"),
    POST_REVIEW("post-review");

    private String label;
    private String name;
    private String value;

    private InsideLinkType(String string2) {
        this.name = string2;
    }

    public static InsideLinkType build(String string) {
        for (InsideLinkType insideLinkType : InsideLinkType.values()) {
            if (insideLinkType.getName().equals(string)) {
                return insideLinkType;
            }
        }
        return null;
    }

    public final String getLabel() {
        return this.label;
    }

    public final void setLabel(String string) {
        this.label = string;
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String string) {
        this.value = string;
    }
}
