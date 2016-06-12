
package com.clilystudio.netbook.util.adutil;

final class AdSplashImp$EventType extends Enum {

    private AdSplashImp$EventType(String String1, int int2)
    {
        super( String1, int2 );
    }

    private static AdSplashImp$EventType[] a;     // final access specifier removed
    public static final AdSplashImp$EventType PRESENT = new AdSplashImp$EventType( "PRESENT", 0 );
    public static final AdSplashImp$EventType CLICK = new AdSplashImp$EventType( "CLICK", 1 );
    public static final AdSplashImp$EventType DOWNLOAD = new AdSplashImp$EventType( "DOWNLOAD", 2 );
// Error: Internal #201: 
// The following method may not be correct.

    public static AdSplashImp$EventType valueOf(String String1)
    {
    }

    public static AdSplashImp$EventType[] values()
    {
        return (AdSplashImp$EventType[]) a.clone();
    }

    static 
    {
        AdSplashImp$EventType[] EventType_1darray1 = new AdSplashImp$EventType[3];

        EventType_1darray1[0] = PRESENT;
        EventType_1darray1[1] = CLICK;
        EventType_1darray1[2] = DOWNLOAD;
        a = EventType_1darray1;
    }
}
