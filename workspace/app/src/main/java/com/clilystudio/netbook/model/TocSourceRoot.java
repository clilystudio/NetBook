package com.clilystudio.netbook.model;

import java.io.Serializable;

public class TocSourceRoot implements Serializable {
    private static final long serialVersionUID = -1302208452678963962L;
    private boolean ok;
    private TocSource[] sources;

    public TocSource[] getSources() {
        return this.sources;
    }

    public void setSources(TocSource[] arrtocSource) {
        this.sources = arrtocSource;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
}
