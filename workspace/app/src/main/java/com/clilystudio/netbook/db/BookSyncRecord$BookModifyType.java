package com.clilystudio.netbook.db;

public final class BookSyncRecord$BookModifyType extends Enum {

    public static final BookSyncRecord$BookModifyType SHELF_ADD = new BookSyncRecord$BookModifyType("SHELF_ADD", 0);
    public static final BookSyncRecord$BookModifyType SHELF_REMOVE = new BookSyncRecord$BookModifyType("SHELF_REMOVE", 1);
    public static final BookSyncRecord$BookModifyType FEED_ADD = new BookSyncRecord$BookModifyType("FEED_ADD", 2);
    public static final BookSyncRecord$BookModifyType FEED_REMOVE = new BookSyncRecord$BookModifyType("FEED_REMOVE", 3);
    public static final BookSyncRecord$BookModifyType SYNC_SUCCESS = new BookSyncRecord$BookModifyType("SYNC_SUCCESS", 4);
    private static BookSyncRecord$BookModifyType[] a;     // final access specifier removed

    static {
        BookSyncRecord$BookModifyType[] BookModifyType_1darray1 = new BookSyncRecord$BookModifyType[5];

        BookModifyType_1darray1[0] = SHELF_ADD;
        BookModifyType_1darray1[1] = SHELF_REMOVE;
        BookModifyType_1darray1[2] = FEED_ADD;
        BookModifyType_1darray1[3] = FEED_REMOVE;
        BookModifyType_1darray1[4] = SYNC_SUCCESS;
        a = BookModifyType_1darray1;
    }
// Error: Internal #201: 
// The following method may not be correct.

    private BookSyncRecord$BookModifyType(String String1, int int2) {
        super(String1, int2);
    }

    public static BookSyncRecord$BookModifyType valueOf(String String1) {
    }

    public static BookSyncRecord$BookModifyType[] values() {
        return (BookSyncRecord$BookModifyType[]) a.clone();
    }
}
