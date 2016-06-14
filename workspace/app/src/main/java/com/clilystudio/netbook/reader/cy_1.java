package com.clilystudio.netbook.reader;

import android.os.Parcel;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

final class cy implements ParcelableCompatCreatorCallbacks<ReaderViewPager$SavedState> {
    cy() {
    }

    @Override
    public final /* synthetic */ Object createFromParcel(Parcel parcel, ClassLoader classLoader) {
        return new ReaderViewPager$SavedState(parcel, classLoader);
    }
}
