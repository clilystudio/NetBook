
package com.clilystudio.netbook.util.adutil;

final class f {

    static final int[] a = new int[AdSplashImp$EventType.values().length];

    static 
    {
exit_point:
        {
            try
            {
                a[AdSplashImp$EventType.PRESENT.ordinal()] = 1;
            }
            catch( NoSuchFieldError NoSuchFieldError1 )
            {
            }
            try
            {
                a[AdSplashImp$EventType.CLICK.ordinal()] = 2;
            }
            catch( NoSuchFieldError NoSuchFieldError2 )
            {
            }
            try
            {
                a[AdSplashImp$EventType.DOWNLOAD.ordinal()] = 3;
            }
            catch( NoSuchFieldError NoSuchFieldError3 )
            {
                break exit_point;
            }
            return;
        }
    }
}
