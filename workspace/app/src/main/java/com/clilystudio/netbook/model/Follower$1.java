package com.clilystudio.netbook.model;

import android.os.Parcel;

final class Follower$1
        implements Parcelable.Creator<Follower> {
    public final Follower createFromParcel(Parcel paramParcel) {
        return new Follower(paramParcel);
    }

    public final Follower[] newArray(int paramInt) {
        return new Follower[paramInt];
    }
}

