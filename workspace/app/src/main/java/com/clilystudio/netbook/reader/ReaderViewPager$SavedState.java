package com.clilystudio.netbook.reader;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.view.View;

public class ReaderViewPager$SavedState extends View.BaseSavedState {
    public static final Parcelable.Creator<ReaderViewPager$SavedState> CREATOR = ParcelableCompat.newCreator(new cy());
    int a;
    Parcelable b;
    ClassLoader c;

    ReaderViewPager$SavedState(Parcel parcel, ClassLoader classLoader) {
        super(parcel);
        if (classLoader == null) {
            classLoader = this.getClass().getClassLoader();
        }
        this.a = parcel.readInt();
        this.b = parcel.readParcelable(classLoader);
        this.c = classLoader;
    }

    public ReaderViewPager$SavedState(Parcelable parcelable) {
        super(parcelable);
    }

    public String toString() {
        return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
    }

    @Override
    public void writeToParcel(Parcel parcel, int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.a);
        parcel.writeParcelable(this.b, n);
    }
}
