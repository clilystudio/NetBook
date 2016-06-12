
package com.clilystudio.netbook.model;

public class BookHelp extends BookHelpSummary {

    private String content;
    private String shareLink;
    private String type;

    public String getContent()
    {
        return content;
    }

    public String getShareLink()
    {
        return shareLink;
    }

    public String getType()
    {
        return type;
    }

    public void setContent(String String1)
    {
        content = String1;
    }

    public void setShareLink(String String1)
    {
        shareLink = String1;
    }

    public void setType(String String1)
    {
        type = String1;
    }
}
