
package com.clilystudio.netbook.model;

import java.io.Serializable;
import java.util.List;

public class AdsConfig implements Serializable {

    private List advertList;
    private int index;
    private long lastDeleteTime;
    private static final long serialVersionUID = 5519239417878198685L;

    public List getAdvertList()
    {
        return advertList;
    }

    public int getIndex()
    {
        return index;
    }

    public long getLastDeleteTime()
    {
        return lastDeleteTime;
    }

    public void setAdvertList(List List1)
    {
        advertList = List1;
    }

    public void setIndex(int int1)
    {
        index = int1;
    }

    public void setLastDeleteTime(long long1)
    {
        lastDeleteTime = long1;
    }
}
