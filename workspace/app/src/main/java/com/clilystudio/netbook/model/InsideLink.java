package com.clilystudio.netbook.model;

public class InsideLink {
    private final InsideLinkType mType;
    private final String mValue;
    private String mLabel;

    public InsideLink(InsideLinkType paramInsideLinkType, String paramString) {
        this(paramInsideLinkType, paramString, null);
    }

    public InsideLink(InsideLinkType paramInsideLinkType, String paramString1, String paramString2) {
        this.mType = paramInsideLinkType;
        this.mValue = paramString1;
        setLabel(paramString2);
    }

    public String getLabel() {
        return this.mLabel;
    }

    public void setLabel(String paramString) {
        this.mLabel = paramString;
    }

    public InsideLinkType getType() {
        return this.mType;
    }

    public String getValue() {
        return this.mValue;
    }
}

