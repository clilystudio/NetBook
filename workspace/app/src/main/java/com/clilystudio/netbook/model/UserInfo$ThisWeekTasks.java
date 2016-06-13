package com.clilystudio.netbook.model;

import java.io.Serializable;

public class UserInfo$ThisWeekTasks
        implements Serializable {
    private static final long serialVersionUID = 44867902917495881L;
    private boolean rate;

    public boolean isRate() {
        return this.rate;
    }

    public void setRate(boolean bl) {
        this.rate = bl;
    }
}
