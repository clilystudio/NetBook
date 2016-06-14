package com.clilystudio.netbook.model;

import java.io.Serializable;

public class MenuAd$Settings implements Serializable {
    private static final long serialVersionUID = 2418387003302899660L;
    private int readerMenuPriority;

    public int getReaderMenuPriority() {
        return this.readerMenuPriority;
    }

    public void setReaderMenuPriority(int n) {
        this.readerMenuPriority = n;
    }
}
