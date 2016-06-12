
package com.clilystudio.netbook.model;

import java.io.Serializable;

public class TocSourceRoot implements Serializable {

    private boolean ok;
    private TocSource[] sources;
    private static final long serialVersionUID = -1302208452678963962L;

    public TocSource[] getSources()
    {
        return sources;
    }

    public boolean isOk()
    {
        return ok;
    }

    public void setOk(boolean boolean1)
    {
        ok = boolean1;
    }

    public void setSources(TocSource[] TocSource_1darray1)
    {
        sources = TocSource_1darray1;
    }
}
