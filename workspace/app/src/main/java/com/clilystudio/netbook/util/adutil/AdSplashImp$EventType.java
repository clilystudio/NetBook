package com.clilystudio.netbook.util.adutil;

final class AdSplashImp$EventType extends Enum<AdSplashImp$EventType> {
    public static final /* enum */ AdSplashImp$EventType CLICK;
    public static final /* enum */ AdSplashImp$EventType DOWNLOAD;
    public static final /* enum */ AdSplashImp$EventType PRESENT;
    private static final /* synthetic */ AdSplashImp$EventType[] a;

    static {
        PRESENT = new AdSplashImp$EventType();
        CLICK = new AdSplashImp$EventType();
        DOWNLOAD = new AdSplashImp$EventType();
        AdSplashImp$EventType[] arradSplashImp$EventType = new AdSplashImp$EventType[]{PRESENT, CLICK, DOWNLOAD};
        a = arradSplashImp$EventType;
    }

    private AdSplashImp$EventType() {
        super(string, n);
    }

    public static AdSplashImp$EventType valueOf(String string) {
        return (AdSplashImp$EventType) ((Object) Enum.valueOf(AdSplashImp$EventType.class, string));
    }

    public static AdSplashImp$EventType[] values() {
        return (AdSplashImp$EventType[]) a.clone();
    }
}
