
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class Chapter implements Serializable {

    private String body;
    private String content;
    private String cpContent;
    private int currency;
    private String id;
    private boolean isVip;
    protected String link;
    private static final long serialVersionUID = -7332522845657326368L;

    public String getBody()
    {
        return body;
    }

    public String getContent()
    {
        if( cpContent != null )
            return cpContent;
        else
            return content;
    }

    public String getCpContent()
    {
        return cpContent;
    }

    public int getCurrency()
    {
        return currency;
    }

    public String getId()
    {
        return id;
    }

    public String getLink()
    {
        return link;
    }

    public boolean isVip()
    {
        return isVip;
    }

    public void setBody(String String1)
    {
        body = String1;
    }

    public void setContent(String String1)
    {
        content = String1;
    }

    public void setCpContent(String String1)
    {
        cpContent = String1;
    }

    public void setCurrency(int int1)
    {
        currency = int1;
    }

    public void setId(String String1)
    {
        id = String1;
    }

    public void setIsVip(boolean boolean1)
    {
        isVip = boolean1;
    }

    public void setLink(String String1)
    {
        link = String1;
    }
}
