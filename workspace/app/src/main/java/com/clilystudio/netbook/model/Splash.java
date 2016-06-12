
package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.Date;

public class Splash implements Serializable {

    private String _id;
    private Date end;
    private String img3x4;
    private String insideLink;
    private String link;
    private Date start;
    private static final long serialVersionUID = -1994127725401600755L;

    public boolean equals(Object Object1)
    {
        if( Object1 != null && Object1 instanceof Splash )
        {
            Splash Splash2 = (Splash) Object1;

            if( Splash2.get_id() != null && Splash2.get_id().equals( get_id() ) )
                return true;
        }
        return false;
    }

    public Date getEnd()
    {
        return end;
    }

    public String getImg3x4()
    {
        return img3x4;
    }

    public String getInsideLink()
    {
        return insideLink;
    }

    public String getLink()
    {
        return link;
    }

    public Date getStart()
    {
        return start;
    }

    public String get_id()
    {
        return _id;
    }

    public int hashCode()
    {
        if( get_id() == null )
            return 0;
        else
            return get_id().hashCode();
    }

    public void setEnd(Date Date1)
    {
        end = Date1;
    }

    public void setImg3x4(String String1)
    {
        img3x4 = String1;
    }

    public void setInsideLink(String String1)
    {
        insideLink = String1;
    }

    public void setLink(String String1)
    {
        link = String1;
    }

    public void setStart(Date Date1)
    {
        start = Date1;
    }

    public void set_id(String String1)
    {
        _id = String1;
    }
}
