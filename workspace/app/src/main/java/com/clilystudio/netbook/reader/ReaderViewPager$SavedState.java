
package com.clilystudio.netbook.reader;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable$Creator;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.view.View$BaseSavedState;

public class ReaderViewPager$SavedState extends View$BaseSavedState {

    public ReaderViewPager$SavedState(Parcelable Parcelable1)
    {
        super( Parcelable1 );
    }

    int a;
    Parcelable b;
    ClassLoader c;
    public static final Parcelable$Creator CREATOR = ParcelableCompat.newCreator( (ParcelableCompatCreatorCallbacks) new cy() );

    ReaderViewPager$SavedState(Parcel Parcel1, ClassLoader ClassLoader2)
    {
        super( Parcel1 );
        if( ClassLoader2 == null )
            ClassLoader2 = getClass().getClassLoader();
        a = Parcel1.readInt();
        b = Parcel1.readParcelable( ClassLoader2 );
        c = ClassLoader2;
    }

    public String toString()
    {
        return new StringBuilder( "FragmentPager.SavedState{" ).append( Integer.toHexString( System.identityHashCode( this ) ) ).append( " position=" ).append( a ).append( "}" ).toString();
    }

    public void writeToParcel(Parcel Parcel1, int int2)
    {
        super.writeToParcel( Parcel1, int2 );
        Parcel1.writeInt( a );
        Parcel1.writeParcelable( b, int2 );
    }
}
