package com.clilystudio.netbook.reader;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;

public class ReaderViewPager$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new cy());
    int a;
    Parcelable b;
    ClassLoader c;

    ReaderViewPager$SavedState(Parcel paramParcel, ClassLoader paramClassLoader) {
        super(paramParcel);
        if (paramClassLoader == null)
            paramClassLoader = getClass().getClassLoader();
        this.a = paramParcel.readInt();
        this.b = paramParcel.readParcelable(paramClassLoader);
        this.c = paramClassLoader;
    }

    public ReaderViewPager$SavedState(Parcelable paramParcelable) {
        super(paramParcelable);
    }

    public String toString() {
        return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
    }

    public void writeToParcel(Parcel paramParcel, int paramInt) {
        super.writeToParcel(paramParcel, paramInt);
        paramParcel.writeInt(this.a);
        paramParcel.writeParcelable(this.b, paramInt);
    }
}

