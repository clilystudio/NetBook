package com.clilystudio.netbook.model;

public class InsideLink {
    private final InsideLinkType mType;
    private final String mValue;
    private String mLabel;

    public InsideLink(InsideLinkType insideLinkType, String string) {
        this(insideLinkType, string, null);
    }

    public InsideLink(InsideLinkType insideLinkType, String string, String string2) {
        this.mType = insideLinkType;
        this.mValue = string;
        this.setLabel(string2);
    }

    public String getLabel() {
        return this.mLabel;
    }

    public void setLabel(String string) {
        this.mLabel = string;
    }

    public InsideLinkType getType() {
        return this.mType;
    }

    public String getValue() {
        return this.mValue;
    }
}
