
package com.clilystudio.netbook.model;

public class InsideLink {

    public InsideLink(InsideLinkType InsideLinkType1, String String2, String String3)
    {
        mType = InsideLinkType1;
        mValue = String2;
        setLabel( String3 );
    }

    private String mLabel;
    private InsideLinkType mType;     // final access specifier removed
    private String mValue;     // final access specifier removed

    public InsideLink(InsideLinkType InsideLinkType1, String String2)
    {
        this( InsideLinkType1, String2, null );
    }

    public String getLabel()
    {
        return mLabel;
    }

    public InsideLinkType getType()
    {
        return mType;
    }

    public String getValue()
    {
        return mValue;
    }

    public void setLabel(String String1)
    {
        mLabel = String1;
    }
}
