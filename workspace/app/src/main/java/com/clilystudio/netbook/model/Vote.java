
package com.clilystudio.netbook.model;

public class Vote implements Comparable {

    private String content;
    private int count;

    public int compareTo(Vote Vote1)
    {
        return getCount() - Vote1.getCount();
    }

    public volatile int compareTo(Object Object1)
    {
        return compareTo( (Vote) Object1 );
    }

    public String getContent()
    {
        return content;
    }

    public int getCount()
    {
        return count;
    }

    public void setContent(String String1)
    {
        content = String1;
    }

    public void setCount(int int1)
    {
        count = int1;
    }
}
