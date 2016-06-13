package com.clilystudio.netbook.model;

import android.text.TextUtils;

import java.util.Date;

public class ShelfMsg {
    public String _id;
    public Date end;
    public boolean highlight;
    public boolean login;
    public String postLink;
    public Date start;

    public boolean equals(Object object) {
        if (object == null || !(object instanceof ShelfMsg)) {
            return false;
        }
        ShelfMsg shelfMsg = (ShelfMsg) object;
        return TextUtils.equals(this._id, shelfMsg._id);
    }

    public int hashCode() {
        if (this._id == null) {
            return 0;
        }
        return this._id.hashCode();
    }
}
