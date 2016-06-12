
package com.clilystudio.netbook.util;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.AdsConfig;
import com.clilystudio.netbook.model.Advert;
import com.clilystudio.netbook.model.AdvertData;
import com.clilystudio.netbook.model.MyApkAdvert;
import com.clilystudio.netbook.model.MyUrlAdvert;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public final class c {

    private static c a = null;

    public static c a()
    {
        if( a == null )
            a = new c();
        return a;
    }

    private static void a(AdsConfig AdsConfig1)
    {
        MyApplication.a().a( (Serializable) AdsConfig1, "saved_adverts_1" );
    }

    private static AdsConfig d()
    {
        return (AdsConfig) MyApplication.a().b( "saved_adverts_1" );
    }

    public final Advert a(String String1)
    {
        AdsConfig AdsConfig2 = d();

        if( AdsConfig2 != null )
        {
            if( AdsConfig2 != null )
            {
                List List3 = AdsConfig2.getAdvertList();

                if( List3 != null )
                {
                    int int4 = AdsConfig2.getIndex();

                    if( int4 >= 0 && int4 < List3.size() )
                    {
                        int int5;
                        int int6;

                        for( int5 = int4; !((Advert) List3.get( int5 )).canShowAtPosition( String1 ); int5 = int6 )
                        {
                            int6 = (int5 + 1) % List3.size();
                            if( int6 == int4 )
                                return null;
                        }
                        return (Advert) List3.get( int5 );
                    }
                }
            }
        }
        return null;
    }

    public final void a(Advert Advert1)
    {
        AdsConfig AdsConfig2 = d();

        if( AdsConfig2 != null && AdsConfig2.getAdvertList() != null )
        {
            List List3 = AdsConfig2.getAdvertList();

            if( List3.contains( Advert1 ) )
            {
                ((Advert) List3.get( List3.indexOf( Advert1 ) )).setRead( true );
                a( AdsConfig2 );
                return;
            }
        }
    }

    public final boolean a(AdvertData[] AdvertData_1darray1)
    {
        if( AdvertData_1darray1 != null )
        {
            AdsConfig AdsConfig2 = d();

            if( AdvertData_1darray1.length == 0 )
            {
                if( AdsConfig2 != null )
                {
                    a( null );
                    return true;
                }
            }
            else
            {
                Object[] Object_1darray3 = new Advert[AdvertData_1darray1.length];
                int int4;
                List List5;
                List List6;
                AdsConfig AdsConfig7;

                for( int4 = 0; int4 < AdvertData_1darray1.length; ++int4 )
                {
                    AdvertData AdvertData11 = AdvertData_1darray1[int4];
                    Object Object12;

                    if( AdvertData11.isApk() )
                        Object12 = new MyApkAdvert();
                    else
                        Object12 = new MyUrlAdvert();
                    ((Advert) Object12).setData( AdvertData11 );
                    Object_1darray3[int4] = Object12;
                }
                List5 = Arrays.asList( Object_1darray3 );
                if( List5 == null )
                    List6 = null;
                else
                {
                    Collections.sort( List5, (Comparator) new d( this ) );
                    List6 = List5;
                }
                if( AdsConfig2 == null )
                    AdsConfig7 = new AdsConfig();
                else
                {
                    List List8 = AdsConfig2.getAdvertList();
                    int int9;

label_91:
                    {
                        if( List6 == null || List8 == null )
                            int9 = 0;
                        else if( List6.size() != List8.size() )
                            int9 = 0;
                        else
                        {
                            Iterator Iterator10 = List6.iterator();

                            while( Iterator10.hasNext() )
                            {
                                if( List8.contains( (Advert) Iterator10.next() ) )
                                    continue;
                                int9 = 0;
                                break label_91;
                            }
                            int9 = 1;
                        }
                    }
                    if( int9 != 0 )
                        return false;
                    AdsConfig7 = AdsConfig2;
                }
                AdsConfig7.setAdvertList( List6 );
                AdsConfig7.setIndex( 0 );
                a( AdsConfig7 );
                return true;
            }
        }
    }

    public final void b()
    {
        AdsConfig AdsConfig1 = d();

        if( AdsConfig1 != null )
        {
            AdsConfig1.setLastDeleteTime( Calendar.getInstance().getTimeInMillis() );
            a( AdsConfig1 );
        }
    }

    public final void c()
    {
        AdsConfig AdsConfig1 = d();

        if( AdsConfig1 != null && AdsConfig1.getAdvertList() != null )
        {
            int int2 = AdsConfig1.getAdvertList().size();

            if( int2 >= 2 )
            {
                AdsConfig1.setIndex( (1 + AdsConfig1.getIndex()) % int2 );
                a( AdsConfig1 );
                return;
            }
        }
    }
}
