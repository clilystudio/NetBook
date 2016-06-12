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

    public boolean equals(Object Object1) {
        if (Object1 == null || !(Object1 instanceof ShelfMsg))
            return false;
        else {
            ShelfMsg ShelfMsg2 = (ShelfMsg) Object1;

            return TextUtils.equals((CharSequence) _id, (CharSequence) ShelfMsg2._id);
        }
    }

    public int hashCode() {
        if (_id == null)
            return 0;
        else
            return _id.hashCode();
    }
}
