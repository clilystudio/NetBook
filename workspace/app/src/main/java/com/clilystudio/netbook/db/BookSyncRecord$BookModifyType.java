package com.clilystudio.netbook.db;

public enum BookSyncRecord$BookModifyType
{
  static
  {
    FEED_ADD = new BookModifyType("FEED_ADD", 2);
    FEED_REMOVE = new BookModifyType("FEED_REMOVE", 3);
    SYNC_SUCCESS = new BookModifyType("SYNC_SUCCESS", 4);
    BookModifyType[] arrayOfBookModifyType = new BookModifyType[5];
    arrayOfBookModifyType[0] = SHELF_ADD;
    arrayOfBookModifyType[1] = SHELF_REMOVE;
    arrayOfBookModifyType[2] = FEED_ADD;
    arrayOfBookModifyType[3] = FEED_REMOVE;
    arrayOfBookModifyType[4] = SYNC_SUCCESS;
    a = arrayOfBookModifyType;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.db.BookSyncRecord.BookModifyType
 * JD-Core Version:    0.6.0
 */