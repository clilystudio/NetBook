
package com.clilystudio.netbook.reader;

import android.os.Parcel;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;

final class cy implements ParcelableCompatCreatorCallbacks {

    public final Object createFromParcel(Parcel Parcel1, ClassLoader ClassLoader2)
    {
        return new ReaderViewPager$SavedState( Parcel1, ClassLoader2 );
    }

    public final volatile Object[] newArray(int int1)
    {
        return new ReaderViewPager$SavedState[int1];
    }
}
