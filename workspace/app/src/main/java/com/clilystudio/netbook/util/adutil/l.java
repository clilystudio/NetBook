
package com.clilystudio.netbook.util.adutil;

import android.content.Context;
import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.AdvertData;
import java.util.Iterator;
import java.util.List;

public final class l extends a implements View$OnClickListener {

    public l(AdSplashImp AdSplashImp1)
    {
        super( AdSplashImp1 );
    }

    private com.androidquery.a b;
    private View c;
    private View d;
    private Class e;
    private Object f;
    private boolean g = false;

    private static transient Object a(Class Class1, String String2, Class Class3, Object Object4, Object[] Object_1darray5)
    {
        reflect.Method Method11;

        if( Class3 == null )
        {
            try
            {
                Method11 = Class1.getDeclaredMethod( String2, new Class[0] );
                return Method11.invoke( Object4, Object_1darray5 );
            }
            catch( NoSuchMethodException NoSuchMethodException9 )
            {
                NoSuchMethodException9.printStackTrace();
                return null;
            }
            catch( reflect.InvocationTargetException InvocationTargetException8 )
            {
                InvocationTargetException8.printStackTrace();
                return null;
            }
            catch( IllegalAccessException IllegalAccessException7 )
            {
                IllegalAccessException7.printStackTrace();
                return null;
            }
            catch( NullPointerException NullPointerException6 )
            {
                NullPointerException6.printStackTrace();
                return null;
            }
        }
        else
        {
            reflect.Method Method10 = Class1.getDeclaredMethod( String2, { Class3 } );

            Method11 = Method10;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void a()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final boolean a(View View1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final Object invoke(Object Object1, reflect.Method Method2, Object[] Object_1darray3)
    {
    }

    public final void onClick(View View1)
    {
        switch( View1.getId() )
        {
            case 400:
                if( g )
                {
                    a();
                    return;
                }
                break;
            default:
                break;
        }
    }
}
