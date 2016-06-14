package com.clilystudio.netbook.model;

public final class InsideLinkType extends Enum<InsideLinkType> {
    public static final /* enum */ InsideLinkType BOOK;
    public static final /* enum */ InsideLinkType BOOKLIST;
    public static final /* enum */ InsideLinkType GAME;
    public static final /* enum */ InsideLinkType LINK;
    public static final /* enum */ InsideLinkType OTHER;
    public static final /* enum */ InsideLinkType POST;
    public static final /* enum */ InsideLinkType POST_HELP;
    public static final /* enum */ InsideLinkType POST_REVIEW;
    private static final /* synthetic */ InsideLinkType[] $VALUES;
    private static final InsideLinkType[] types;

    static {
        GAME = new InsideLinkType("game");
        POST = new InsideLinkType("post");
        BOOK = new InsideLinkType("book");
        BOOKLIST = new InsideLinkType("booklist");
        LINK = new InsideLinkType("link");
        OTHER = new InsideLinkType("other");
        POST_HELP = new InsideLinkType("post-help");
        POST_REVIEW = new InsideLinkType("post-review");
        InsideLinkType[] arrinsideLinkType = new InsideLinkType[]{GAME, POST, BOOK, BOOKLIST, LINK, OTHER, POST_HELP, POST_REVIEW};
        $VALUES = arrinsideLinkType;
        InsideLinkType[] arrinsideLinkType2 = new InsideLinkType[]{GAME, POST, BOOK, BOOKLIST, OTHER, LINK, POST_HELP, POST_REVIEW};
        types = arrinsideLinkType2;
    }

    private String label;
    private String name;
    private String value;

    private InsideLinkType(String string2) {
        super(string, n);
        this.name = string2;
    }

    public static InsideLinkType build(String string) {
        for (InsideLinkType insideLinkType : types) {
            if (!insideLinkType.getName().equals(string)) continue;
            return insideLinkType;
        }
        return null;
    }

    public static InsideLinkType valueOf(String string) {
        return (InsideLinkType) ((Object) Enum.valueOf(InsideLinkType.class, string));
    }

    public static InsideLinkType[] values() {
        return (InsideLinkType[]) $VALUES.clone();
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
