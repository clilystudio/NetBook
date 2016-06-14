package com.clilystudio.netbook.model;

import android.os.Parcel;
import android.os.Parcelable;

final class Follower$1 implements Parcelable.Creator<Follower> {
    Follower$1() {
    }

    @Override
    public final Follower createFromParcel(Parcel parcel) {
        return new Follower(parcel);
    }

    public final Follower[] newArray(int n) {
        return new Follower[n];
    }
}
