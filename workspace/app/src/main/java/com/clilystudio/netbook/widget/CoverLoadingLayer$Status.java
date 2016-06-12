
package com.clilystudio.netbook.widget;

final class CoverLoadingLayer$Status extends Enum {

    private CoverLoadingLayer$Status(String String1, int int2)
    {
        super( String1, int2 );
    }

    private static CoverLoadingLayer$Status[] a;     // final access specifier removed
    public static final CoverLoadingLayer$Status NONE = new CoverLoadingLayer$Status( "NONE", 0 );
    public static final CoverLoadingLayer$Status PREPARE = new CoverLoadingLayer$Status( "PREPARE", 1 );
    public static final CoverLoadingLayer$Status PROGRESS = new CoverLoadingLayer$Status( "PROGRESS", 2 );
    public static final CoverLoadingLayer$Status PAUSE = new CoverLoadingLayer$Status( "PAUSE", 3 );
    public static final CoverLoadingLayer$Status PENDING = new CoverLoadingLayer$Status( "PENDING", 4 );
    public static final CoverLoadingLayer$Status DOWNLOADED = new CoverLoadingLayer$Status( "DOWNLOADED", 5 );
// Error: Internal #201: 
// The following method may not be correct.

    public static CoverLoadingLayer$Status valueOf(String String1)
    {
    }

    public static CoverLoadingLayer$Status[] values()
    {
        return (CoverLoadingLayer$Status[]) a.clone();
    }

    static 
    {
        CoverLoadingLayer$Status[] Status_1darray1 = new CoverLoadingLayer$Status[6];

        Status_1darray1[0] = NONE;
        Status_1darray1[1] = PREPARE;
        Status_1darray1[2] = PROGRESS;
        Status_1darray1[3] = PAUSE;
        Status_1darray1[4] = PENDING;
        Status_1darray1[5] = DOWNLOADED;
        a = Status_1darray1;
    }
}
