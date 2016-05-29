package com.clilystudio.app.netbook.model;

import java.io.Serializable;

public class TocSourceRoot
        implements Serializable {
    private static final long serialVersionUID = -1302208452678963962L;
    private boolean ok;
    private TocSource[] sources;

    public TocSource[] getSources() {
        return this.sources;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public void setSources(TocSource[] paramArrayOfTocSource) {
        this.sources = paramArrayOfTocSource;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.TocSourceRoot
 * JD-Core Version:    0.6.2
 */