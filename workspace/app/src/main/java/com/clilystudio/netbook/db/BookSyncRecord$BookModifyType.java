package com.clilystudio.netbook.db;

public final class BookSyncRecord$BookModifyType
        extends Enum<BookSyncRecord$BookModifyType> {
    public static final /* enum */ BookSyncRecord$BookModifyType FEED_ADD;
    public static final /* enum */ BookSyncRecord$BookModifyType FEED_REMOVE;
    public static final /* enum */ BookSyncRecord$BookModifyType SHELF_ADD;
    public static final /* enum */ BookSyncRecord$BookModifyType SHELF_REMOVE;
    public static final /* enum */ BookSyncRecord$BookModifyType SYNC_SUCCESS;
    private static final /* synthetic */ BookSyncRecord$BookModifyType[] a;

    static {
        SHELF_ADD = new BookSyncRecord$BookModifyType();
        SHELF_REMOVE = new BookSyncRecord$BookModifyType();
        FEED_ADD = new BookSyncRecord$BookModifyType();
        FEED_REMOVE = new BookSyncRecord$BookModifyType();
        SYNC_SUCCESS = new BookSyncRecord$BookModifyType();
        BookSyncRecord$BookModifyType[] arrbookSyncRecord$BookModifyType = new BookSyncRecord$BookModifyType[]{SHELF_ADD, SHELF_REMOVE, FEED_ADD, FEED_REMOVE, SYNC_SUCCESS};
        a = arrbookSyncRecord$BookModifyType;
    }

    private BookSyncRecord$BookModifyType() {
        super(string, n);
    }

    public static BookSyncRecord$BookModifyType valueOf(String string) {
        return (BookSyncRecord$BookModifyType) ((Object) Enum.valueOf(BookSyncRecord$BookModifyType.class, string));
    }

    public static BookSyncRecord$BookModifyType[] values() {
        return (BookSyncRecord$BookModifyType[]) a.clone();
    }
}
