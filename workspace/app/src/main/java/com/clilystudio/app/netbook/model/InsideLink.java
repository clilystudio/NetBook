package com.clilystudio.app.netbook.model;

public class InsideLink {
    private String mLabel;
    private final InsideLinkType mType;
    private final String mValue;

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

    public InsideLinkType getType() {
        return this.mType;
    }

    public String getValue() {
        return this.mValue;
    }

    public void setLabel(String paramString) {
        this.mLabel = paramString;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.InsideLink
 * JD-Core Version:    0.6.2
 */