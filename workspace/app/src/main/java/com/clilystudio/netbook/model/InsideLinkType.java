package com.clilystudio.netbook.model;

public enum InsideLinkType {
    private static final InsideLinkType[] types;

    static {
        BOOK = new InsideLinkType("BOOK", 2, "book");
        BOOKLIST = new InsideLinkType("BOOKLIST", 3, "booklist");
        LINK = new InsideLinkType("LINK", 4, "link");
        OTHER = new InsideLinkType("OTHER", 5, "other");
        POST_HELP = new InsideLinkType("POST_HELP", 6, "post-help");
        POST_REVIEW = new InsideLinkType("POST_REVIEW", 7, "post-review");
        InsideLinkType[] arrayOfInsideLinkType1 = new InsideLinkType[8];
        arrayOfInsideLinkType1[0] = GAME;
        arrayOfInsideLinkType1[1] = POST;
        arrayOfInsideLinkType1[2] = BOOK;
        arrayOfInsideLinkType1[3] = BOOKLIST;
        arrayOfInsideLinkType1[4] = LINK;
        arrayOfInsideLinkType1[5] = OTHER;
        arrayOfInsideLinkType1[6] = POST_HELP;
        arrayOfInsideLinkType1[7] = POST_REVIEW;
        $VALUES = arrayOfInsideLinkType1;
        InsideLinkType[] arrayOfInsideLinkType2 = new InsideLinkType[8];
        arrayOfInsideLinkType2[0] = GAME;
        arrayOfInsideLinkType2[1] = POST;
        arrayOfInsideLinkType2[2] = BOOK;
        arrayOfInsideLinkType2[3] = BOOKLIST;
        arrayOfInsideLinkType2[4] = OTHER;
        arrayOfInsideLinkType2[5] = LINK;
        arrayOfInsideLinkType2[6] = POST_HELP;
        arrayOfInsideLinkType2[7] = POST_REVIEW;
        types = arrayOfInsideLinkType2;
    }

    private String label;
    private String name;
    private String value;

    private InsideLinkType(String paramString) {
        this.name = paramString;
    }

    public static InsideLinkType build(String paramString) {
        for (InsideLinkType localInsideLinkType : types)
            if (localInsideLinkType.getName().equals(paramString))
                return localInsideLinkType;
        return null;
    }

    public final String getLabel() {
        return this.label;
    }

    public final void setLabel(String paramString) {
        this.label = paramString;
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }

    public final void setValue(String paramString) {
        this.value = paramString;
    }
}

