.class public final Lcom/ushaqi/zhuishushenqi/util/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Z


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/api/b;

.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->a:Lcom/ushaqi/zhuishushenqi/api/b;

    .line 44
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->b:Landroid/app/Activity;

    .line 45
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->c:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/Z;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    .line 80
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->A(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 84
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->isOk()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_1
    return-object v0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->getBookshelfUpdated()Ljava/util/Date;

    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;->needSync(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    :try_start_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->B(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 96
    :goto_2
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->setSyncDate(Ljava/util/Date;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->setNeedSync(Z)V

    goto :goto_1

    .line 93
    :catch_1
    move-exception v1

    .line 94
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 104
    :cond_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;-><init>()V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->setNeedSync(Z)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/Z;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/Z;Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 33
    .line 3151
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 3152
    if-eqz v1, :cond_0

    .line 3155
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3157
    new-instance v2, Lcom/activeandroid/query/Delete;

    invoke-direct {v2}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v4, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v2, v4}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v2

    const-string v4, "account is not null AND account <> ?"

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-virtual {v2, v4, v5}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 3159
    new-instance v1, Lcom/activeandroid/query/Delete;

    invoke-direct {v1}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v2, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v1

    const-string v2, "account is null AND deleted = 1"

    invoke-virtual {v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v1

    invoke-virtual {v1}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 3166
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v1

    .line 3167
    if-eqz v1, :cond_b

    .line 3168
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 3169
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->find(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 3170
    sget-object v2, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_REMOVE:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->find(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    .line 3173
    :goto_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->getSyncDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 3174
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3175
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->getBookShelfs()[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    move-result-object v5

    .line 3176
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->getFeedingBooks()[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    move-result-object v6

    .line 3179
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllNoFeed()Ljava/util/List;

    move-result-object v0

    .line 3180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 3181
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Ljava/lang/String;[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3182
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->trulyDelete(Ljava/lang/String;)V

    goto :goto_1

    .line 3185
    :cond_2
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllFeeding()Ljava/util/List;

    move-result-object v0

    .line 3186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    .line 3187
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/ushaqi/zhuishushenqi/util/Z;->a(Ljava/lang/String;[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3188
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->trulyDelete(Ljava/lang/String;)V

    goto :goto_2

    .line 3194
    :cond_4
    array-length v7, v5

    move v0, v3

    :goto_3
    if-ge v0, v7, :cond_7

    aget-object v8, v5, v0

    .line 3195
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3196
    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v9

    .line 3198
    if-nez v9, :cond_6

    .line 3213
    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 3214
    :cond_5
    invoke-static {v8, v11}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->create(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;Z)V

    .line 3216
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v9

    new-instance v10, Lcom/ushaqi/zhuishushenqi/event/c;

    invoke-virtual {v8}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v8, v3}, Lcom/ushaqi/zhuishushenqi/event/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v9, v10}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 3194
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3221
    :cond_7
    array-length v1, v6

    move v0, v3

    :goto_4
    if-ge v0, v1, :cond_a

    aget-object v4, v6, v0

    .line 3222
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v5

    .line 3223
    if-nez v5, :cond_9

    .line 3230
    if-eqz v2, :cond_8

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3231
    :cond_8
    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->createFeed(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)V

    .line 3233
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v5

    new-instance v7, Lcom/ushaqi/zhuishushenqi/event/c;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4, v3}, Lcom/ushaqi/zhuishushenqi/event/c;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5, v7}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 3221
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2284
    :cond_a
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/Z;->b()V

    .line 2285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/app/Activity;)V

    .line 33
    return-void

    :cond_b
    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/ushaqi/zhuishushenqi/util/Z;->d:Z

    return v0
.end method

.method private static a(Ljava/lang/String;[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getType()I

    move-result v1

    sget-object v2, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SYNC_SUCCESS:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 261
    :cond_0
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, p1, v1

    .line 262
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    :cond_1
    :goto_1
    return v0

    .line 261
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/Z;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private static b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1390
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllNoFeed()Ljava/util/List;

    move-result-object v3

    .line 1391
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    move v1, v2

    .line 1392
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1393
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1392
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1410
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAllFeeding()Ljava/util/List;

    move-result-object v3

    .line 1411
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/String;

    move v1, v2

    .line 1412
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1413
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 1412
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 138
    :cond_1
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 141
    array-length v3, v4

    if-lez v3, :cond_2

    .line 142
    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/X;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-direct {v3, v1, v6, v7, v4}, Lcom/ushaqi/zhuishushenqi/util/X;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;[Ljava/lang/String;)V

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/util/X;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    :cond_2
    array-length v3, v5

    if-lez v3, :cond_3

    .line 145
    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/X;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_ADD:Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/ushaqi/zhuishushenqi/util/X;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;[Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/util/X;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 148
    :cond_3
    return-void
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 33
    sput-boolean p0, Lcom/ushaqi/zhuishushenqi/util/Z;->d:Z

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 57
    :cond_0
    if-eqz p1, :cond_1

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/aa;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/aa;-><init>(Lcom/ushaqi/zhuishushenqi/util/Z;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/ac;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->b:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/util/ac;-><init>(Lcom/ushaqi/zhuishushenqi/util/Z;Landroid/app/Activity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/Z;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/ac;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
